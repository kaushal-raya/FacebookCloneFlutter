import 'package:flutter/material.dart';

class Textbutton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  const Textbutton({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed:null,
      label: Text(label, style: TextStyle(color: Colors.black, fontSize: 16.0)),
      icon: Icon(icon, color: color),
    );
  }
}
