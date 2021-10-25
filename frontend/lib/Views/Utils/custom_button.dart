import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.text,
    this.press, this.buttonColor, this.textColor,
  }) : super(key: key);
  final String text;
  final Function press;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * .06,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: Colors.white,
          backgroundColor: buttonColor,
        ),
        onPressed: press ,
        child: Text(
          text,
          style: TextStyle(fontSize: 17,fontFamily: 'open-sans',color: textColor,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}