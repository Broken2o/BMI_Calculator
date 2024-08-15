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
  double _hight = 0.0;
  int wieght=0;
  int age=0;
  bool isMale=true;
  bool isWieght=true;
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
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderCountainer(
                          gender: 'Male',
                          path: 'assets/images/male.png',
                          isSelected: isMale,
                          onTap: () {
                            setState(() {
                              isMale=true;
                            });
                          },

                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(

                        child: GenderCountainer(
                          gender: 'Female',
                          path: 'assets/images/famale.png',
                          isSelected: !isMale,
                          onTap: () {
                            setState(() {
                              isMale=false;

                            });
                          },
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${_hight.round()}',
                              style:  const TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                              ),
                            ),
                            const Text(
                              'cm',
                              style:  TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                                fontFamily: "Inter",
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10,),
                        Slider(
                          min:0 ,
                          max: 200,
                          divisions: 200,
                          value: _hight,
                          allowedInteraction: SliderInteraction.tapAndSlide,
                          activeColor: const Color(0xffE83D67),
                          onChanged: (double value) {
                            setState(() {
                              _hight = value;
                            });
                          },
                        ),],),),),
              const SizedBox(height: 15,),
               Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: CountCountainer(
                          count: wieght,
                          item: 'Weight',
                          added: () {
                            wieght++;
                            setState(() {
                            });
                            },
                          mined: () {
                            if(wieght>5){
                              wieght--;
                              setState(() {
                              });
                            }

                          },
                          isSelected: isWieght,
                          onTap: () {
                            setState(() {
                              isWieght=true;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(

                        child: CountCountainer(
                          count: age,
                          item: 'Age',
                          added: () {
                            age++;
                            setState(() {
                            });
                          },
                          mined: () {
                            if(age>1){
                              age--;
                              setState(() {
                              });
                            }

                          }, isSelected: !isWieght,
                          onTap: () {
                            setState(() {
                              isWieght=true;
                            });
                          },
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