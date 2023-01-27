part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignUp extends AuthEvent {}

class CheckTokenEvent extends AuthEvent {
  final User user;
  CheckTokenEvent({required this.user});
}
