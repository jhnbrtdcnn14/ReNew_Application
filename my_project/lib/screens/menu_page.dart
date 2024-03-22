import 'package:flutter/material.dart';

import 'package:my_project/src/colors.dart';
import 'package:my_project/src/dialog.dart';
import 'package:my_project/src/tiles.dart';

import 'login_page.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Scaffold(
        backgroundColor: AppColors.darkgrey,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                AvatarTiles(
                  name: 'Janjan',
                  path: 'avatar.png',
                ),
                SizedBox(height: 20),
                AppTiles(text: 'Looking for page', path: 'book.png'),
                SizedBox(height: 10),
                AppTiles(text: 'Donation', path: 'heart.png'),
                SizedBox(height: 10),
                AppTiles(text: 'Invite Friends', path: 'share.png'),
                SizedBox(height: 10),
                AppTiles(text: 'My purchase', path: 'card.png'),
                SizedBox(height: 10),
                AppTiles(text: 'Settings', path: 'settings.png'),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            MyDialog.showCustomDialog(
                              context,
                              title: 'Logout',
                              content: 'Are you sure you want to logout?',
                              path: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius here
                            ),
                            backgroundColor:
                                AppColors.lightgrey, // Button background color
                            foregroundColor: AppColors.darkgrey, // Text color
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 20),
                            elevation: 5.0, // Optional: Add a slight elevation
                          ),
                          child: const Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Add more ListTile widgets as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
