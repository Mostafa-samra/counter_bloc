import 'package:counter_with_bloc/bloc/counter_bloc_bloc.dart';
import 'package:counter_with_bloc/widget/buttonswidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter with BloC"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Counter value is : ",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<CounterBlocBloc, CounterBlocState>(
              builder: (context, state) {
                if (state is CounterBlocInitial) {
                  return const Text(
                    "0",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 30),
                  );
                } else if (state is CounterValueChangedState) {
                  return Text(
                    state.counter.toString(),
                    style:
                        const TextStyle(color: Colors.lightBlue, fontSize: 30),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
