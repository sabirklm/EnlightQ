import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: BlocProvider(
        create: (_) => CounterBloc(),
        child: CounterView(),
      ),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text('Counter: ${state.counter}');
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () => counterBloc.add(DecrementEvent()),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => counterBloc.add(IncrementEvent()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial());

  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield CounterState(counter: state.counter + 1);
    } else if (event is DecrementEvent) {
      yield CounterState(counter: state.counter - 1);
    }
  }
}


abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
class CounterState {
  final int counter;

  CounterState({required this.counter});

  factory CounterState.initial() => CounterState(counter: 0);
}
