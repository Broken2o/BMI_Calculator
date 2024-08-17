import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  const ButtonCalculator({super.key,required this.text , required this.onTap});
  final String text;
  final Function() onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
            color: Color(0xffE83D67)
        ),
        width: double.infinity,

        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text( text,
                style:  const TextStyle(
                  fontSize: 32,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Inter",
                ),),]
            )


      ),
    );}}