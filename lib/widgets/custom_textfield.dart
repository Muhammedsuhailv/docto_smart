import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String? hintText;
   CustomTextfield({super.key,this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
