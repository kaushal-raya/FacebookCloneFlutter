import 'package:facebook_clone/Data/Notificationdatas.dart';
import 'package:facebook_clone/Methods/listview.dart';
import 'package:facebook_clone/Models/Notifications.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          spacing: 5.5,
          children: [
            Icon(Icons.menu),
            Text(
              "Notifications",
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search, size: 29, fontWeight: FontWeight.bold),
          SizedBox(width: 5),
        ],
      ),
      body: Notificationbody(),
    );
  }
}

class Notificationbody extends StatelessWidget {
  const Notificationbody({super.key});

  @override
  Widget build(BuildContext context) {
    final Notificationitems notifications;
    return Padding(
      padding: EdgeInsets.all(0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    "New",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      letterSpacing: -1.2,
                    ),
                  ),
                ],
              ),
            ),
            Listviews(),
            SizedBox(
              height: 60.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  children: [
                    Text(
                      "Earlier",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: Colors.blue.withOpacity(0.22),
              height: 700,
              child: SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: earlier.length,
                  itemBuilder: (context, index) {
                    final earlieri = earlier[index];
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 6.0,
                            horizontal: 8.0,
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                  earlieri.imageurl,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${earlieri.name} ${earlieri.whathappens}",
                                        overflow: TextOverflow.visible,
                                        softWrap: true,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
