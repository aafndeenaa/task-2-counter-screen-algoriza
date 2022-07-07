import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_2/cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Counter'),
                centerTitle: true,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            CounterCubit.get(context).Plus();
                          },
                          child: const Text('Plus')),
                      Text("${CounterCubit.get(context).counter}"),
                      TextButton(
                          onPressed: () {
                            CounterCubit.get(context).Minus();
                          },
                          child: const Text('Minus')),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
