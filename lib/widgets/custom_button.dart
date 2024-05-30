import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget{

    final double width, height;
    final bool isprimary;
    final Function onPressed;
    final String text;

    const  CustomBottom({super.key, 
              required this.height, 
              required this.width,
              required this.isprimary,
              required this.onPressed,
              required this.text,
              }
            );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, 
      width: width,
      decoration: BoxDecoration(
        color: isprimary ? Color.fromARGB(255, 2, 132, 71) : Colors.transparent,
        boxShadow: isprimary ? const [
          BoxShadow(
            color:Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,

          ),
        ] : [],        
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isprimary ? Colors.transparent : Theme.of(context).primaryColor,
        ),
      ),
      child:MaterialButton(onPressed:() => onPressed(),
      child : Text(
        text,
        style:  TextStyle(
          color: isprimary ? Colors.white : Theme.of(context).primaryColor,
        ),
      ),
      ),
    );
  }
}