$(document).ready(function(){
    let namespace = "/test";
    let video = document.querySelector("#videoElement");
    let canvas = document.querySelector("#canvasElement");
    let ctx = canvas.getContext('2d', { alpha: false });
    video.setAttribute('autoplay', '');
    video.setAttribute('muted', '');
    video.setAttribute('playsinline', '');
    canvas.width = 384;
    canvas.height = 512;
    photo = document.getElementById('photo');
    var localMediaStream = null;
  
    var socket = io.connect(location.protocol + '//' + document.domain + ':' + location.port + namespace);
  
    function sendSnapshot() {
      if (!localMediaStream) {
        return;
      }
      ctx.beginPath();
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      ctx.fillStyle = ctx.createPattern(video, 'repeat');
      ctx.fillRect(0,0,512,512, 0, 0, canvas.width, canvas.height);
  
      let dataURL = canvas.toDataURL('image/jpeg',1);
      socket.emit('input image', dataURL);
  
      //socket.emit('output image')
  
      //var img = new Image();
      
  
  
    }
  
    socket.on('connect', function() {
      console.log('Connected!');
    });
  
    socket.on('out-image-event',function(data){
  
  
      //img.src = dataURL//data.image_data
      photo.setAttribute('src', data.image_data);
  
      });
  
    var constraints = {
      video: {
        facingMode: 'environment',
        width: 512,
        height: 512
      }
    };
  
    navigator.mediaDevices.getUserMedia(constraints).then(function(stream) {
      video.srcObject = stream;
      localMediaStream = stream;
  
      setInterval(function () {
        sendSnapshot();
      }, 150);
    }).catch(function(error) {
      console.log(error);
    });
  });