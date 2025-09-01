import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_cubit/logic/cubit/counter_cubit.dart';
import 'package:learn_cubit/logic/cubit/counter_state.dart';
import 'package:learn_cubit/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(child: Text(state.counter.toString())),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().updateCounter();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                );
              },
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
