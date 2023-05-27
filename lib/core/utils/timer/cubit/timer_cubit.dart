/* External dependencies */
import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies */
part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerInitial());

  late Timer _timer;

  void stopTimer({isTimerEnd = true}) {
    _timer.cancel();
    if (isTimerEnd) {
      emit(TimerEnd());
    }
  }

  void startTimer(int count) {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (count == 0) {
          _timer.cancel();

          emit(TimerEnd());
        } else {
          count--;

          emit(TimerRunning(count));
        }
      },
    );
  }

  void restartTimer(int count, bool isStart) {
    count = count * 2;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (isStart == false) {
          if (count == 0) {
            _timer.cancel();
            isStart = true;

            emit(TimerEnd());
          } else {
            count--;

            emit(TimerRunning(count));
          }
        }
      },
    );
  }
}
