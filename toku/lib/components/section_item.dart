import 'package:flutter/material.dart';

class CatogeresItem extends StatelessWidget {
  CatogeresItem({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        color: color,
        height: 57,
        child: Text(
          text!,
          style: TextStyle(
            color: Color.fromARGB(255, 252, 248, 248),
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
