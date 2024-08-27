import 'package:bmi/cubits/counter_cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitial());
  static CounterCubit get(context)=> BlocProvider.of(context);
  static CounterCubit read(context)=> BlocProvider.of(context);
  double hight = 0;
  int weight=0;
  int age=0;
  bool isMale = true;
  bool isWeight = true;

  void PlusWeight(){
    weight++;
    emit(CounterWeightPlusState());
  }

  void MinusWeight(){
    if(weight >20){
      weight--;
      emit(CounterWeightMinusState());
    }
  }

  void PlusAge(){
    age++;
    emit(CounterAgePlusState());
  }

  void MinusAge(){
    if(age >1){
      age--;
      emit(CounterAgeMinusState());
    }
  }

  void OnChanged (value) {
    hight = value;
    emit(CounterChangeState());
  }

  void Male (){
    isMale = true;
    emit(CounterMaleState());
  }

  void Famale (){
    isMale = false;
    emit(CounterFamaleState());
  }

  void Weight (){
    isWeight = true;
    emit(CounterWeightState());
  }

  void Age (){
    isWeight = false;
    emit(CounterAgeState());
  }





}