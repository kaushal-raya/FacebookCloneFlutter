import 'package:facebook_clone/Methods/TextButton.dart';
import 'package:facebook_clone/Models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostBox extends StatelessWidget {
  final Post post;
  const PostBox({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          PostHeader(post: post),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: PostItems(post: post),
          ),
          PostIcons(post: post),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  final Post post;
  const PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 5.0)),
        CircleAvatar(backgroundImage: NetworkImage(post.user.imageUrl)),
        SizedBox(width: 5.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.timeAgo,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 3.0),

                  Icon(Icons.public, color: Colors.grey[600], size: 12),
                ],
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
      ],
    );
  }
}

class PostItems extends StatelessWidget {
  final Post post;
  const PostItems({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              post.caption,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18),
            ),
          ),

          post.imageUrl != "null"
              ? Padding(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 6.0),
                  child: Image.network(post.imageUrl),
                )
              : const SizedBox.shrink(),
        ],
      ),
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
                          Text(
                            "${widget.post.shares} Shares",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
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
                    icon: FontAwesomeIcons.commentDots,
                    color: Colors.grey,
                  ),
                  Textbutton(
                    label: "Share",
                    icon: Icons.share,
                    color: Colors.grey,
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
