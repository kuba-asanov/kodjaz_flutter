/* External dependencies */
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/models/token.dart';
import 'package:kodjaz/features/auth/repository/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState()) {
    on<SignUp>((event, emit) => null);

    on<CheckTokenEvent>((event, emit) async {
      emit(state.copyWith(tokenChecked: false));

      await _authRepository
          .checkUserToken(
              email: event.user.email!, password: event.user.password!)
          .then((token) {
        emit(
          state.copyWith(
            tokenChecked: true,
            token: token,
          ),
        );
      }).onError((error, stackTrace) {
        emit(state.copyWith(
          error: error.toString(),
          tokenChecked: true,
        ));
      });

      print('state.token ===== ${state.token?.access}');
    });
  }
}
