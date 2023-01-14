// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kodjaz/core/injection/register_module.dart' as _i6;
import 'package:kodjaz/core/navigation/auto_route.gr.dart' as _i4;
import 'package:kodjaz/features/app/logic/bloc/home_bloc.dart' as _i5;
import 'package:kodjaz/features/app/presentation/bloc/app_bloc.dart' as _i3;

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
    gh.lazySingleton<_i5.HomeBloc>(() => _i5.HomeBloc());
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
