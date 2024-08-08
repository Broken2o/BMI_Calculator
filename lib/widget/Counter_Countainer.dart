import 'package:flutter/material.dart';

class CountCountainer extends StatefulWidget {
  const CountCountainer({super.key,required this.item ,required this.color});
  final String item;
  final Color color;

  @override
  State<CountCountainer> createState() => _CountCountainerState();
}

class _CountCountainerState extends State<CountCountainer> {
  int count=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: widget.color
        //const Color(0xff333244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.item,
            style:  TextStyle(
              fontSize: 20,
              color:  Color(0xff888C9E),
              fontWeight: FontWeight.w300,
              fontFamily: "Inter",
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            '$count',
            style:  TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 40,
              fontWeight: FontWeight.w700,
              fontFamily: "Inter",
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){
                  count--;
                  setState(() {});
                },
                icon: const Icon(Icons.minimize),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff8B8C9E),)
                ),
              ),
              const SizedBox(width: 60,),
              IconButton(
                  onPressed: (){
                    count++;
                    setState(() {});
                    },
                  icon: const Icon(Icons.add_rounded),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff8B8C9E),)
                ),
              )
            ],
          )
        ],
      ),

    );}}