// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kodjaz/core/client/client.dart' as _i3;
import 'package:kodjaz/core/injection/register_module.dart' as _i15;
import 'package:kodjaz/core/navigation/auto_route.gr.dart' as _i5;
import 'package:kodjaz/features/app/presentation/bloc/app_bloc.dart' as _i4;
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart' as _i12;
import 'package:kodjaz/features/auth/repository/auth_repository.dart' as _i6;
import 'package:kodjaz/features/auth/repository/auth_repository_impl.dart'
    as _i7;
import 'package:kodjaz/features/home/presentation/bloc/home_bloc.dart' as _i13;
import 'package:kodjaz/features/home/repository/home_repository.dart' as _i8;
import 'package:kodjaz/features/home/repository/home_repository_impl.dart'
    as _i9;
import 'package:kodjaz/features/lesson/presentation/bloc/lesson_bloc.dart'
    as _i14;
import 'package:kodjaz/features/lesson/repository/lesson_repository.dart'
    as _i10;
import 'package:kodjaz/features/lesson/repository/lesson_repository_impl.dart'
    as _i11;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Api>(_i3.Api());
    gh.lazySingleton<_i4.AppBloc>(() => _i4.AppBloc());
    gh.lazySingleton<_i5.AppRouter>(() => registerModule.router);
    gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImpl(gh<_i3.Api>()));
    gh.factory<_i8.HomeRepository>(() => _i9.HomeRepositoryImpl(gh<_i3.Api>()));
    gh.factory<_i10.LessonRepository>(
        () => _i11.LessonRepositoryImpl(gh<_i3.Api>()));
    gh.singleton<_i12.AuthBloc>(_i12.AuthBloc(gh<_i6.AuthRepository>()));
    gh.lazySingleton<_i13.HomeBloc>(
        () => _i13.HomeBloc(gh<_i8.HomeRepository>()));
    gh.lazySingleton<_i14.LessonBloc>(
        () => _i14.LessonBloc(gh<_i10.LessonRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
