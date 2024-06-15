import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.data,this.height,this.width});
  double? width;
  double? height;
  String? data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
          child: Text(
            data!,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff006837),
      ),
    );
  }
}
