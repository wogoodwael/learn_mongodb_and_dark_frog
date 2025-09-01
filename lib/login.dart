import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_cubit/logic/cubit/counter_cubit.dart';
import 'package:learn_cubit/logic/cubit/counter_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
                body: Center(child: Text("This is login counter ${state.counter}"),),
              );
        },
      ),
    );
  }
}