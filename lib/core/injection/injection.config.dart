// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kodjaz/core/client/client.dart' as _i3;
import 'package:kodjaz/core/injection/register_module.dart' as _i9;
import 'package:kodjaz/core/navigation/auto_route.gr.dart' as _i5;
import 'package:kodjaz/features/app/presentation/bloc/app_bloc.dart' as _i4;
import 'package:kodjaz/features/home/repository/home_repository.dart'
    as _i6;
import 'package:kodjaz/features/home/repository/home_repository_impl.dart'
    as _i7;
import 'package:kodjaz/features/home/presentation/bloc/home_bloc.dart' as _i8;

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
    gh.factory<_i6.HomeRepository>(() => _i7.HomeRepositoryImpl(gh<_i3.Api>()));
    gh.lazySingleton<_i8.HomeBloc>(
        () => _i8.HomeBloc(gh<_i6.HomeRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
