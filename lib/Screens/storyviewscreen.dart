import 'package:flutter/material.dart';

class Storyviewscreen extends StatelessWidget {
  final String story_image;
  const Storyviewscreen({super.key, required this.story_image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(story_image),fit: BoxFit.fitHeight),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
