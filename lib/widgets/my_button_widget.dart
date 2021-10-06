import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;
 MyButtonWidget({this.color,this.onPress,this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        onPressed: onPress,
        child:Text(
          text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),) ,
        ),
    );
  }
}