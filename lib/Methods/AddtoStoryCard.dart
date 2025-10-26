import 'package:facebook_clone/Models/user_model.dart';
import 'package:flutter/material.dart';

class addtostory extends StatelessWidget {
  final User user;
  const addtostory({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(user.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: CircleAvatar(
              child: Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              "Add To Story",
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