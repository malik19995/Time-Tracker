import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:app/ui/widgets/app_text.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as io;

late List<CameraDescription> _cameras;

// STEP1:  Stream setup
class StreamSocket {
  final _socketResponse = StreamController<String>();

  void Function(String) get addResponse => _socketResponse.sink.add;

  Stream<String> get getResponse => _socketResponse.stream;

  void dispose() {
    _socketResponse.close();
  }
}

StreamSocket streamSocket = StreamSocket();
late io.Socket socket;

//STEP2: Add this function in main function in main.dart file and add incoming data to the stream
void connectAndListen() {
  logger.e('Connectingg');
  try {
    socket = io.io(
      'https://localhost:5000',
      io.OptionBuilder()
          .setPath('/')
          .setTransports(['websocket'])
          .enableAutoConnect()
          .build(),
    );
  } catch (err, s) {
    logger.e(err.toString());
    logger.e(s.toString());
  }

  if (socket != null) {
    socket.onConnect((_) {
      logger.e('connected');

      socket.emit('connect', 'Client connected');
    });

    socket.onConnectError((data) {
      print('---------------------------');
      if (data is SocketException) {
        log(data.message);
        log(data.osError?.message ?? 'osErr');
        log(data.address?.host ?? 'host');
      } else {
        print('---------------------------');
        print(data);
      }
    });
    socket.onConnecting((data) {
      print('---------------------------');
      print(data);
    });
    //When an event recieved from server, data is added to the stream
    socket.on('out-image-event', (data) => streamSocket.addResponse);
    socket.onDisconnect((_) => log('disconnect'));
  }
}

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  late CameraController controller;
  final ValueNotifier<bool> initialized = ValueNotifier(false);

  initCameras() async {
    _cameras = await availableCameras();
    controller = CameraController(
      _cameras[1],
      ResolutionPreset.low,
    );
    controller.initialize().then((_) {
      initialized.value = true;

      if (!mounted) {
        return;
      }
      setState(() {});
      controller.startImageStream((image) {
        final int numBytes =
            image.planes.fold(0, (count, plane) => count += plane.bytes.length);
        final Uint8List allBytes = Uint8List(numBytes);

        int nextIndex = 0;
        for (int i = 0; i < image.planes.length; i++) {
          allBytes.setRange(nextIndex, nextIndex + image.planes[i].bytes.length,
              image.planes[i].bytes);
          nextIndex += image.planes[i].bytes.length;
        }
// Convert as done previously
        String base64Image = base64Encode(allBytes);
        log(base64Image);
        // print('emittingg');
        // socket.emit('input image', base64Image);
        // image.format.group.
      });
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  void initState() {
    logger.e('init');
    initCameras();
    connectAndListen();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    socket.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logger.e('build');
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppText('Stream Connection Try On'),
            StreamBuilder(
              stream: streamSocket.getResponse,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return Column(
                  children: [
                    ValueListenableBuilder(
                        valueListenable: initialized,
                        builder: (context, isInitialised, v) {
                          return Center(
                            child: isInitialised
                                ? CameraPreview(
                                    controller,
                                  )
                                : const CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                          );
                        }),
                    Center(
                      child: AppText(
                        snapshot.data ?? 'NA',
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
