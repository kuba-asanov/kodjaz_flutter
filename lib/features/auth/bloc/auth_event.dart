part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignUpEvent extends AuthEvent {
  final User user;

  SignUpEvent({required this.user});
}

class LoginEvent extends AuthEvent {
  final User user;
  LoginEvent({required this.user});
}

class LogoutEvent extends AuthEvent {}
