import 'package:facebook_clone/Data/Notificationdatas.dart';
import 'package:flutter/material.dart';

class Listviews extends StatelessWidget {
  const Listviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.22),
      height: 250,
      child: SizedBox(
        height: 500,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: newitems.length,
          itemBuilder: (context, index) {
            final notiitems = newitems[index];
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(notiitems.imageurl),
                          ),
                          Text(" ${notiitems.whathappens}"),
                        ],
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
    );
  }
}
