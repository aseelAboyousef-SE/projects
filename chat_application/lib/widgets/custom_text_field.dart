import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.hintText, this.onChanged, this.obscureText = false});
  String? hintText;
  Function(String)? onChanged;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Filed is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
