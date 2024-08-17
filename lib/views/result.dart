import 'package:flutter/material.dart';
import 'package:bmi/widget/Button_Calculator.dart';
import 'home.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff24263B),
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
              Expanded(
                child: Container(
                  margin:const EdgeInsets.all(20),
                  height: 700,
                  width: 400,
                  decoration:const BoxDecoration(
                      color: const Color(0xff333244),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:const Center(
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Normal",
                          style: TextStyle(
                              color: Color(0xff21BF73),
                              fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",),
                        ),
                        Text(
                          "19.2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 64,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",),
                        ),
                        Text(
                          "You Have A Normal Body Weight , Good Job",
                          textAlign: TextAlign.center,
                          style: TextStyle(
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
                  text: "Re Calularor",
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