part of 'timer_cubit.dart';

abstract class TimerState extends Equatable {
  @override
  List<Object> get props => [];
}

class TimerInitial extends TimerState {}

class TimerRunning extends TimerState {
  final int count;

  TimerRunning(
    this.count,
  );

  @override
  List<Object> get props => [count];
}

class TimerEnd extends TimerState {}
