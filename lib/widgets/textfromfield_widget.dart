import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFromField extends StatelessWidget {

 final String hintText;
 bool obscureText=false;
 TextEditingController controller;
 MyTextFromField({this.obscureText,this.hintText,this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          )
        
        ) ,
      ),
    );
  }
}