import 'package:facebook_clone/Data/Post.dart';
import 'package:facebook_clone/Data/User.dart';
import 'package:facebook_clone/Methods/CircleIcon.dart';
import 'package:facebook_clone/Methods/postbox.dart';
import 'package:facebook_clone/Screens/PostsBox.dart';
import 'package:facebook_clone/Screens/StoryScreen.dart';
import 'package:facebook_clone/Screens/firstremaining.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Circleicon(icon: Icons.search, size: 24,color: Colors.black,),
              SizedBox(width: 7.0),
              Circleicon(icon: FontAwesomeIcons.facebookMessenger, size: 22,color: Colors.black,),
            ],
            floating: true,
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.1,
              ),
            ),
          ),
          SliverToBoxAdapter(child: Firstremaining()),
          SliverToBoxAdapter(child: Storyscreen()),
          SliverToBoxAdapter(child: Divider(height: 60, thickness: 2.2)),
          SliverList(
            delegate: SliverChildBuilderDelegate( (
              context,
              index,
            ) {
              final post = posts[index];
              return PostBox(post: post);
            },
            childCount: posts.length,),
            
          ),
        ],
      ),
    );
  }
}