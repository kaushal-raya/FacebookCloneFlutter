import 'package:facebook_clone/Data/data.dart';
import 'package:facebook_clone/Methods/StoryViewScreen.dart';
import 'package:facebook_clone/Methods/OnlineStoryCard.dart';
import 'package:facebook_clone/Methods/AddtoStoryCard.dart';
import 'package:facebook_clone/Models/user_model.dart';
import 'package:facebook_clone/Models/story_model.dart';
import 'package:flutter/material.dart';

class Storyscreen extends StatefulWidget {
  const Storyscreen({super.key});

  @override
  State<Storyscreen> createState() => _StoryscreenState();
}

class _StoryscreenState extends State<Storyscreen> {
  @override
  Widget build(BuildContext context) {
    final double boxHeight = 180;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: boxHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length + 1, // +1 for currentUser’s Add Story
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {},
                child: addtostory(user: currentUser),
              );
            }

            final Story story = stories[index - 1];
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return onclick(
                      onlineUsers: story.imageUrl,
                      user: story.user,
                    );
                  },
                ),
              ),
              child: StoryCard(
                user: story.user,
                imageUrl: story.imageUrl,
                story: story,
              ),
            );
          },
        ),
      ),
    );
  }
}
