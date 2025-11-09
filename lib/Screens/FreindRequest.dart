import 'package:facebook_clone/Data/FreindRequest.dart';
import 'package:facebook_clone/Data/User.dart';
import 'package:facebook_clone/Methods/ElevatedButton.dart';
import 'package:facebook_clone/Methods/TextButton.dart';
import 'package:facebook_clone/Models/FreindRequest.dart';
import 'package:facebook_clone/Models/user_model.dart';
import 'package:flutter/material.dart';

class Freindrequest extends StatelessWidget {
  const Freindrequest({super.key});

  @override
  Widget build(BuildContext context) {
    final Request requests;
    final String _number_ofrequest = request.length.toString();

    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            title: Text(
              "Friends",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 29,
                letterSpacing: 1.5,
              ),
            ),
            actions: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                  fill: 0.4,
                  size: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                spacing: 8,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 9,
                      alignment: Alignment.center,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    onPressed: null,
                    child: Text(
                      "Suggestions",
                      style: TextStyle(
                        letterSpacing: -0.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    onPressed: null,
                    child: Text(
                      "Your Friends",
                      style: TextStyle(
                        letterSpacing: -0.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
            sliver: SliverToBoxAdapter(child: Divider(thickness: 2.2)),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 8.0,
                    children: [
                      Row(
                        spacing: 6,
                        children: [
                          Text(
                            "Freind Requests",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              letterSpacing: 0.6,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _number_ofrequest,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final requests = request[index];
              final userprofiles = onlineUsers[index];
              return RequestLists(user: userprofiles, request: requests);
            }, childCount: request.length),
          ),
        ],
      ),
    );
  }
}

class RequestLists extends StatelessWidget {
  final User user;
  final Request request;
  const RequestLists({super.key, required this.user, required this.request});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 9.0),
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 39,
                backgroundImage: NetworkImage(user.imageUrl),
              ),
              SizedBox(width: 5.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Row(
                      spacing: 12,
                      textDirection: TextDirection.ltr,
                      children: [
                        Text(
                          user.name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 12.0,
                      children: [
                        Elevatedbuttons(
                          buttonname: "Confirm",
                          color: Colors.blueAccent,
                          textcolor: Colors.white,
                        ),
                        Elevatedbuttons(
                          buttonname: " Delete ",
                          color: Colors.grey.shade300,
                          textcolor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
