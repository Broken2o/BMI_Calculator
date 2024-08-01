import 'package:bmi/widget/gender_countainer.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderCountainer(
                          gender: 'Male',
                          path: 'assets/images/male.png',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Expanded(
                          child: GenderCountainer(
                            gender: 'Female',
                            path: 'assets/images/female.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}