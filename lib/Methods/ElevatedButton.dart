import 'package:flutter/material.dart';

class Elevatedbuttons extends StatelessWidget {
  final String buttonname;
  final Color color;
  final Color textcolor;
  const Elevatedbuttons({
    super.key,
    required this.buttonname,
    required this.color,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(11),
        ),
      ),
      child: Text(
        " $buttonname ",
        style: TextStyle(
          color: textcolor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          letterSpacing: -0.5,
        ),
      ),
    );
  }
}
