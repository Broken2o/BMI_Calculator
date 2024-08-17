import 'package:flutter/material.dart';
import 'package:bmi/widget/Button_Calculator.dart';
import 'home.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.bmi, required this.classification, this.description});
  final double bmi;
  final String classification;
  final description;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff333244),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),

        ),
      ),
      body: Container(
        color: const Color(0xff1C2135),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Text(
                    "Your Results",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),


              Expanded(
                child: Container(
                  margin:const EdgeInsets.all(20),
                  height: 700,
                  width: 400,
                  decoration:const BoxDecoration(
                      color: Color(0xff333244),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:Center(
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Text(
                          widget.classification,
                          style: const TextStyle(
                              color: Color(0xff21BF73),
                              fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "${widget.bmi.round()}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 64,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",),
                        ),
                        const SizedBox(height: 60,),
                         Text(
                          widget.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color(0xff8B8C9E),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
               ButtonCalculator(
                  text: "Re Calulator",
                  onTap: (){
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  )
            ],
          ),
        ),
      ),
    );
  }
}