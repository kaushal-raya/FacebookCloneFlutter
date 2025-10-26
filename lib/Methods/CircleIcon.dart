import 'package:flutter/material.dart';

class Circleicon extends StatelessWidget {
  final IconData icon;
  final double size;

  const Circleicon({super.key, required this.icon, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                backgroundColor: Colors.grey[400],
                child: Icon(icon, size: size),
              );
  }
}