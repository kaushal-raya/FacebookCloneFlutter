import 'package:facebook_clone/Data/Videos.dart';
import 'package:facebook_clone/Methods/TextButton.dart';
import 'package:facebook_clone/Models/Videos.dart';
import 'package:facebook_clone/Models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Videobox extends StatelessWidget {
  final Post post;
  final Videos videos;
  const Videobox({super.key, required this.post, required this.videos});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          PostHeader(post: post, video: videos),
          VideoPost(video: videos, post: post),
          PostIcons(post: post),
        ],
      ),
    );
  }
}

class PostHeader extends StatefulWidget {
  final Post post;
  final Videos video;
  const PostHeader({super.key, required this.post, required this.video});

  @override
  State<PostHeader> createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {
  @override
  Widget build(BuildContext context) {
    bool folowed = true;
    return Row(
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 5.0)),
        CircleAvatar(backgroundImage: NetworkImage(widget.post.user.imageUrl)),
        SizedBox(width: 5.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.post.user.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 2.0),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      widget.video.isfollow ? "Following" : "Follow",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: -1,
                      ),
                    ),
                  ),
                  Icon(
                    widget.video.isfollow ? FontAwesomeIcons.bell : Icons.add,
                    size: 18,
                    fill: 0.9,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
      ],
    );
  }
}

class PostIcons extends StatefulWidget {
  final Post post;
  const PostIcons({super.key, required this.post});

  @override
  State<PostIcons> createState() => _PostIconsState();
}

class _PostIconsState extends State<PostIcons> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: double.infinity,
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.post.likes} Likes",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${widget.post.comments}Comments",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5.0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textbutton(
                    label: "Like",
                    icon: Icons.thumb_up_sharp,
                    color: isliked ? Colors.blue : Colors.grey,
                  ),
                  Textbutton(
                    label: "Comment",
                    icon: FontAwesomeIcons.comment,
                    color: Colors.grey,
                  ),
                  Textbutton(
                    label: "Share",
                    icon: FontAwesomeIcons.share,
                    color: Colors.grey,
                  ),
                ],
              ),
              Divider(height: 20, thickness: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoPost extends StatelessWidget {
  final Videos video;
  final Post post;
  const VideoPost({super.key, required this.video, required this.post});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.5,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: [
                Text(
                  video.video_captions,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.45,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(post.imageUrl),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.8),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.play_circle,
                    size: 55,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
