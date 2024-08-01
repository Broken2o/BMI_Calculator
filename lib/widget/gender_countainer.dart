import 'package:flutter/material.dart';

class GenderCountainer extends StatelessWidget {
const GenderCountainer({super.key,required this.gender , required this.path});
final String gender;
final String path;

@override
Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: const Color(0xff333244),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        image:
        AssetImage(path),
        height: 96,
        width: 96,
      ),
      const SizedBox(height: 20,),
      Text(
        gender,
        style: const TextStyle(
          fontSize: 20,
          color:  Color(0xff888C9E),
        ),

      )
    ],
  ),

);}}