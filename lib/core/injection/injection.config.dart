// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kodjaz/core/injection/register_module.dart' as _i14;
import 'package:kodjaz/core/navigation/auto_route.gr.dart' as _i4;
import 'package:kodjaz/features/app/presentation/bloc/app_bloc.dart' as _i3;
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart' as _i11;
import 'package:kodjaz/features/auth/repository/auth_repository.dart' as _i5;
import 'package:kodjaz/features/auth/repository/auth_repository_impl.dart'
    as _i6;
import 'package:kodjaz/features/home/presentation/bloc/home_bloc.dart' as _i12;
import 'package:kodjaz/features/home/repository/home_repository.dart' as _i7;
import 'package:kodjaz/features/home/repository/home_repository_impl.dart'
    as _i8;
import 'package:kodjaz/features/lesson/presentation/bloc/lesson_bloc.dart'
    as _i13;
import 'package:kodjaz/features/lesson/repository/lesson_repository.dart'
    as _i9;
import 'package:kodjaz/features/lesson/repository/lesson_repository_impl.dart'
    as _i10;

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
    gh.lazySingleton<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.AppRouter>(() => registerModule.router);
    gh.factory<_i5.AuthRepository>(() => _i6.AuthRepositoryImpl());
    gh.factory<_i7.HomeRepository>(() => _i8.HomeRepositoryImpl());
    gh.factory<_i9.LessonRepository>(() => _i10.LessonRepositoryImpl());
    gh.singleton<_i11.AuthBloc>(_i11.AuthBloc(gh<_i5.AuthRepository>()));
    gh.lazySingleton<_i12.HomeBloc>(
        () => _i12.HomeBloc(gh<_i7.HomeRepository>()));
    gh.lazySingleton<_i13.LessonBloc>(
        () => _i13.LessonBloc(gh<_i9.LessonRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
