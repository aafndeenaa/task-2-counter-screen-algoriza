import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_2/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;

  void Plus() {
    counter++;
    emit(CounterPlusState());
  }

  void Minus() {
    counter--;
    emit(CounterMinusState());
  }
}
