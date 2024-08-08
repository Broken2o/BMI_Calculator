import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  const ButtonCalculator({super.key,required this.text , required this.onPressed});
  final String text;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
          color: Color(0xffE83D67)
      ),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ,
        child:
         Text(text,
          style:  const TextStyle(
              fontSize: 32,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w300,
            fontFamily: "Inter",
          ),),
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Color(0xffE83D67),)
        ),
      ),
    );}}