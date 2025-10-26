import 'package:facebook_clone/Models/user_model.dart';
import 'package:flutter/material.dart';

class onclick extends StatelessWidget {
  final String onlineUsers;
  final User user;

  const onclick({super.key, required this.onlineUsers, required this.user});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Scaffold(
      body: SizedBox(
        height: height * 1,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(onlineUsers),
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken)
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8),
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(user.imageUrl),
                              ),
                              const SizedBox(width: 11.0),
                              Text(
                                user.name,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.close,
                              size: 39,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
