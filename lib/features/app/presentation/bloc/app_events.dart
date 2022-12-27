part of 'app_bloc.dart';

abstract class AppEvent {}

class CurrentPageIndexChanged extends AppEvent {
  final int index;

  CurrentPageIndexChanged({required this.index});
}
