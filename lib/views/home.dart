import 'package:bmi/views/result.dart';
import 'package:bmi/widget/Button_Calculator.dart';
import 'package:bmi/widget/gender_countainer.dart';
import 'package:flutter/material.dart';

import '../widget/Counter_Countainer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double _value = 0.0;
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
              const Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderCountainer(
                          gender: 'Male',
                          path: 'assets/images/male.png',
                          color: Color(0xff24263B),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(

                        child: GenderCountainer(
                          gender: 'Female',
                          path: 'assets/images/famale.png',
                          color: Color(0xff333244),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Expanded(
                child:
                Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xff333244),
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hight",
                          style:  TextStyle(
                            fontSize: 20,
                            color:  Color(0xff888C9E),
                            fontWeight: FontWeight.w300,
                            fontFamily: "Inter",
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          '$_value cm',
                          style:  TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",
                            ),
                          ),
                        const SizedBox(height: 10,),
                        Slider(
                          min:0 ,
                          max: 400,
                          divisions: 400,
                          value: _value,
                          allowedInteraction: SliderInteraction.tapAndSlide,
                          activeColor: const Color(0xffE83D67),
                          onChanged: (double value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),],),),),
              const SizedBox(height: 15,),
              const Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: CountCountainer(
                          item: 'Weight',
                          color: Color(0xff24263B),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(

                        child: CountCountainer(
                          item: 'Age',
                          color: Color(0xff333244),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              ButtonCalculator(text: "Calculate" ,
              onPressed:  (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResultScreen()),
                );
              },),
            ],
          ),
        ),
      ),
    );
  }
}