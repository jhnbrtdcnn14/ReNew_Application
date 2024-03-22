import 'package:flutter/material.dart';
import 'package:my_project/src/colors.dart';
import 'package:my_project/src/text.dart';
import 'package:my_project/src/tiles.dart';

import '../src/searchbar.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  AppText(text: 'Chats', size: 35, color: AppColors.offwhite),
                  Expanded(
                    child: AppSearch(text: 'Search an item'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            AppPreviewTiles(
                              name: 'Jay Scavas',
                              path: 'face.png',
                              description: 'Hey, how are you?',
                              icon: Icons.circle,
                              iconsize: 15,
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      },
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
