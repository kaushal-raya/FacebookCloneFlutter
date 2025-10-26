import 'package:facebook_clone/Models/models.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/Models/user_model.dart';

class StoryCard extends StatelessWidget {
  final User user;
  final String imageUrl;
  final Story story;

  const StoryCard({
    super.key,
    required this.user,
    required this.imageUrl, required this.story,
  });

  @override
  Widget build(BuildContext context) {
    final isviewed=story.isViewed;
    return Container(
      width: 110,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child:CircleAvatar(radius: 22,backgroundColor: Colors.blue,child:  CircleAvatar(
              backgroundImage: NetworkImage(user.imageUrl),
              
              radius: isviewed?18:22,
            ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              user.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black,
                    offset: Offset(0, 1),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
