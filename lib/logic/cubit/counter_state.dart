part of 'counter_cubit.dart';

class CounterState  {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  String toString() {
    return 'CounterState{counterValue: $counterValue}';
  }

  Map<String, dynamic> toMap() {
    return {
      'counterValue': counterValue,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'] as int,
    );
  }
}

