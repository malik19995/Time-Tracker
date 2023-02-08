import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white, width: 3),
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        'assets/images/image-jeremy.png',
        width: 75,
      ),
    );
  }
}
