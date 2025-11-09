import 'package:facebook_clone/Data/Post.dart';
import 'package:facebook_clone/Data/Videos.dart';
import 'package:facebook_clone/Methods/CircleIcon.dart';
import 'package:facebook_clone/Methods/StoryViewScreen.dart';
import 'package:facebook_clone/Methods/videobox.dart';
import 'package:facebook_clone/Models/Videos.dart';
import 'package:flutter/material.dart';

class Videoscreen extends StatefulWidget {
  const Videoscreen({super.key});

  @override
  State<Videoscreen> createState() => _VideoscreenState();
}

class _VideoscreenState extends State<Videoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            title: Text(
              "Video",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            actions: [
              Circleicon(icon: Icons.person, size: 24, color: Colors.black),
              SizedBox(width: 6.0),
              Circleicon(icon: Icons.search, size: 24, color: Colors.black),
            ],
          ),

          FilterList(),
          SliverToBoxAdapter(child: Divider(height: 15,thickness: 8,color: Colors.grey[350],),),
          SliverList(
            delegate: SliverChildBuilderDelegate( (
              context,
              index,
            ) {
              final post = posts[index];
              final video=videos[index];
              return Videobox(post: post,videos: video,);
            },
            childCount: videos.length,),),
        ],
      ),
    );
  }
}

class FilterList extends StatefulWidget {
  const FilterList({super.key});

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  @override
  Widget build(BuildContext context) {
    bool onclick = false;
    final List<String> filters = [
      "For You",
      "Live",
      "Reels",
      "Music",
      "Following",
    ];
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 55,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),
          itemCount: filters.length,
          itemBuilder: (context, index) {
            final filterlist = filters[index];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        onclick = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      filterlist,
                      style: TextStyle(color: Colors.black, fontSize: 16.1),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
