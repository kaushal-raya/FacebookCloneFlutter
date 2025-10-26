import 'package:facebook_clone/Data/data.dart';
import 'package:flutter/material.dart';

class Postsbox extends StatelessWidget {
  const Postsbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: posts.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final items = posts[index];
              return Container(
                height: MediaQuery.of(context).devicePixelRatio * 1000,
                child: Container(
                  height:MediaQuery.of(context).devicePixelRatio * 900, 
                  margin: EdgeInsets.only(bottom: 10.0),

                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(items.imageUrl),
                      fit: BoxFit.fitHeight,
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black,
                        blurStyle: BlurStyle.solid,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
