import 'package:flutter/material.dart';
import 'package:my_project/src/colors.dart';
import '../src/card.dart';
import '../src/searchbar.dart'; // Import your search bar widget here

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                children: [
                  Expanded(
                    child: AppSearch(text: 'Search an item'),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list_rounded,
                      color: AppColors.lightgreen,
                    ),
                    onPressed: () {
                      // Implement your filter logic here
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Your search bar widget
                  ListView.builder(
                    shrinkWrap: true, // Added to prevent infinite height error
                    physics:
                        NeverScrollableScrollPhysics(), // Added to prevent parent scroll issues
                    itemCount: 6, // Example number of list items
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          AppCards(
                            name: 'Janjan',
                            path: 'cloting.png',
                            // Your AppTiles widget
                          ),
                          SizedBox(height: 10),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
