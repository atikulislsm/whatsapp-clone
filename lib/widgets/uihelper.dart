import 'dart:ui';

import 'package:flutter/material.dart';

class UiHelper{
  static CustomeButton({required VoidCallback callback, required String buttonName}){
    return SizedBox(
      height: 35,
      width: 300,
      child: ElevatedButton(onPressed: (){
        callback();
      }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)
      )),
          child: Text(buttonName, style: TextStyle(fontSize: 14, color: Colors.white),)),
    );
  }
  static CustomText({required String text, required double height,  Color? color, FontWeight? fontWeight}){
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0xff5E5E5E),
        fontWeight: fontWeight,
      ),
    );
  }
}