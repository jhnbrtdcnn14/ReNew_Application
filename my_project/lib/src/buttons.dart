import 'package:flutter/material.dart';

import 'colors.dart';

class AppButtons extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Function onPressed;
  final Color color;

  const AppButtons({
    Key? key,
    required this.onPressed,
    required this.textcolor,
    required this.color,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                onPressed();
              }, // Placeholder: add your onPressed action
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius here
                ),
                backgroundColor: color, // Button background color
                foregroundColor: AppColors.darkgrey, // Text color
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                elevation: 5.0, // Optional: Add a slight elevation
              ),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textcolor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
