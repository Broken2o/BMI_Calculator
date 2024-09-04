import 'package:bmi/cubits/counter_cubit/counter_cubit.dart';
import 'package:bmi/views/result.dart';
import 'package:bmi/widget/Button_Calculator.dart';
import 'package:bmi/widget/gender_countainer.dart';
import 'package:flutter/material.dart';
import '../widget/Weight_Age.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bmi/cubits/counter_cubit/counter_states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff333244),
          centerTitle: true,
          title: const Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500 ,fontFamily: 'playball' ),
          ),
        ),
        body: Container(
          color: const Color(0xff1C2135),
          child: BlocProvider(
            create: (context) => CounterCubit(),
            child: BlocBuilder<CounterCubit, CounterStates>(
                builder: (BuildContext context, CounterStates state) {
              return Column(
                  children: [
                    Expanded (
                        child:
                       Padding(
                           padding:const EdgeInsets.all(20.0),
                           child:
                           Column(children:[
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: GenderCountainer(
                                gender: 'Male',
                                path: 'assets/images/male.png',
                                isSelected:CounterCubit.get(context).isMale,
                                onTap: () {
                                  CounterCubit.get(context).Male();
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
                                isSelected: !CounterCubit.get(context).isMale,
                                onTap: () {
                                  CounterCubit.get(context).Famale();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xff333244),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Hight",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff888C9E),
                                fontWeight: FontWeight.w300,
                                  fontFamily: 'anticSlab'
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${CounterCubit.get(context).hight.round()}',
                                  style: const TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700,
                                      fontFamily: 'anticSlab'
                                  ),
                                ),
                                const Text(
                                  'cm',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 20,
                                      fontFamily: 'anticSlab'
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Slider(
                              min: 0,
                              max: 200,
                              divisions: 200,
                              value: CounterCubit.get(context).hight,
                              allowedInteraction: SliderInteraction.tapAndSlide,
                              activeColor: const Color(0xffE83D67),
                              onChanged: (double value) {
                                CounterCubit.get(context).OnChanged(value);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: WeightAge(
                                count: CounterCubit.get(context).weight ,
                                item: 'Weight',
                                onPlus: () {
                                  CounterCubit.read(context).PlusWeight( );
                                },
                                onMiuns: () {
                                  CounterCubit.get(context).MinusWeight(  );
                                  },
                                isSelected: CounterCubit.get(context).isWeight,
                                onTap: () {
                                  CounterCubit.get(context).Weight();
                                },
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: WeightAge(
                                count: CounterCubit.get(context).age,
                                item: 'Age',
                                onPlus: () {
                                  CounterCubit.get(context).PlusAge();
                                },
                                onMiuns: () {
                                    CounterCubit.get(context).MinusAge();
                                    },
                                isSelected: ! CounterCubit.get(context).isWeight,
                                onTap: () {
                                  CounterCubit.get(context).Age();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),]))),
                    ButtonCalculator(
                      text: "Calculate",
                      onTap: () {
                        double result = CounterCubit.get(context).weight /
                            ( (CounterCubit.get(context).hight.round() / 100) * (CounterCubit.get(context).hight.round() / 100));
                        String classification = "";
                        String description = "";
                        if (result < 18.5) {
                          classification = "Underweight";
                          description = "You Have A Underweight Body Weight ";
                        } else if (result < 25.1) {
                          classification = "Normal";
                          description =
                              "You Have A Normal Body Weight , Good Job";
                        } else if (result < 30.1) {
                          classification = "Overweight";
                          description = "You Have A Overweight Body Weight ";
                        } else {
                          classification = "Obesity";
                          description = "You Have A Obese Body Weight ";
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                  bmi: result,
                                  classification: classification,
                                  description: description)),
                        );
                      },
                    ),
                  ],
                );

            }),
          ),
        ));
  }
}

