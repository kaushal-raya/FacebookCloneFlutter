import 'package:flutter/material.dart';

class Circleicon extends StatelessWidget {
  final IconData icon;
  final double size;
final Color color;
  const Circleicon({super.key, required this.icon, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(icon, size: size,color: color,fontWeight: FontWeight.bold,),
              );
  }
}