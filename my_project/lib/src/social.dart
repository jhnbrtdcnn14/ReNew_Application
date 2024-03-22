import 'package:flutter/material.dart';

import 'colors.dart';
import 'text.dart';

class AppSocial extends StatelessWidget {
  final String account;
  final String path;

  const AppSocial({
    Key? key,
    required this.account,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            path, // Replace 'path_to_your_image.png' with your actual image path
            width: 24, // Adjust width as needed
            height: 24, // Adjust height as needed
            // Apply color if needed
          ),
          SizedBox(width: 10), // Add some spacing between the image and text
          AppText(
            text: account,
            size: 13,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
