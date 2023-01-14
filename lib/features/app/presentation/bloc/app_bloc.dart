/* External dependencies */
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_state.dart';
part 'app_events.dart';
part 'app_bloc.freezed.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<AppEvent>((event, emit) => log("Called event: $event"));

    on<CurrentPageIndexChanged>((event, emit) {
      emit(state.copyWith(
        currentPageIndex: event.index,
      ));
    });
  }
}
