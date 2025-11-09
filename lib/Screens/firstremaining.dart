import 'package:facebook_clone/Data/User.dart';
import 'package:flutter/material.dart';

class Firstremaining extends StatelessWidget {
  const Firstremaining({super.key});

  @override
  Widget build(BuildContext context) {
    final user = currentUser;
    return Container(
      height: 105,
      child: Padding(
        padding: EdgeInsets.symmetric(),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),child: Row(
              spacing: 12,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(user.imageUrl),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "What's on your mind ?",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.photo_library,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  size: 32,
                ),
              ],
            ),
            ),
            Divider(height: 45, thickness: 3.2),
          ],
        ),
      ),
    );
  }
}
