/* External dependencies */
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/core/helpers/cache/cache.dart';
import 'package:kodjaz/core/helpers/exceptions.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/core/injection/injection.dart';

/* Local dependencies */
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/app/presentation/bloc/app_bloc.dart';
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
    on<LogoutEvent>((event, emit) {
      Cache.clearSession();
      emit(const AuthState());
      getIt<AppBloc>().add(CurrentPageIndexChanged(index: 0));
    });

    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(
        loading: true,
        error: null,
      ));

      await _authRepository.createUser(event.user).then((value) {
        emit(
          state.copyWith(
            successSignUp: true,
            loading: false,
          ),
        );
      }).onError(
        (error, stackTrace) {
          if (error is UserAlerdySignUpException) {
            emit(state.copyWith(
              error:
                  LocaleKeys.aUserWithThisEmailAddressIsAlreadyRegistered.tr(),
              loading: false,
            ));
          } else if (error is OnlyNumbersException) {
            emit(state.copyWith(
              error: LocaleKeys.thisPasswordIsEntirelyNumeric.tr(),
              loading: false,
            ));
          } else if (error is PasswordIsTooCommonException) {
            emit(state.copyWith(
              error: LocaleKeys.thisPasswordIsTooCommon.tr(),
              loading: false,
            ));
          } else {
            emit(state.copyWith(
              error: error.toString(),
              loading: false,
            ));
          }
        },
      );
    });

    on<LoginEvent>(
      (event, emit) async {
        emit(state.copyWith(
          loading: true,
          error: null,
        ));

        if (event.user.email != null && event.user.password1 != null) {
          await _authRepository
              .checkUserToken(
                  email: event.user.email!, password: event.user.password1!)
              .then((token) {
            Cache.putSession(token);
            emit(
              state.copyWith(
                loading: false,
                user: event.user,
                token: token,
                error: null,
              ),
            );
          }).onError((error, stackTrace) {
            log(error.toString());

            if (error is UnauthorizedException) {
              emit(state.copyWith(
                error: LocaleKeys.userIsNotFound.tr(),
                loading: false,
              ));
            } else {
              emit(state.copyWith(
                loading: false,
                error: error.toString(),
              ));
            }
          });
        } else {
          emit(state.copyWith(
            loading: false,
          ));
        }
      },
    );
  }
}
