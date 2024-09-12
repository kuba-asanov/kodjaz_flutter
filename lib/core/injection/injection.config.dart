// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bilimapp/core/client/client.dart' as _i3;
import 'package:bilimapp/core/graphql_service/graphql_service.dart' as _i9;
import 'package:bilimapp/core/injection/register_module.dart' as _i21;
import 'package:bilimapp/core/navigation/auto_route.gr.dart' as _i5;
import 'package:bilimapp/features/app/presentation/bloc/app_bloc.dart' as _i4;
import 'package:bilimapp/features/articles/presentation/bloc/article_bloc.dart'
    as _i20;
import 'package:bilimapp/features/articles/repository/articles_repository.dart'
    as _i15;
import 'package:bilimapp/features/articles/repository/articles_repository_impl.dart'
    as _i16;
import 'package:bilimapp/features/auth/bloc/auth_bloc.dart' as _i17;
import 'package:bilimapp/features/auth/repository/auth_repository.dart' as _i6;
import 'package:bilimapp/features/auth/repository/auth_repository_impl.dart'
    as _i7;
import 'package:bilimapp/features/books/presentation/bloc/books_bloc.dart'
    as _i8;
import 'package:bilimapp/features/home/presentation/bloc/home_bloc.dart'
    as _i18;
import 'package:bilimapp/features/home/repository/home_repository.dart' as _i10;
import 'package:bilimapp/features/home/repository/home_repository_impl.dart'
    as _i11;
import 'package:bilimapp/features/lesson/presentation/bloc/lesson_bloc.dart'
    as _i19;
import 'package:bilimapp/features/lesson/repository/lesson_repository.dart'
    as _i12;
import 'package:bilimapp/features/lesson/repository/lesson_repository_impl.dart'
    as _i13;
import 'package:bilimapp/features/quiz/bloc/test_cubit.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImpl());
    gh.lazySingleton<_i8.BooksBloc>(() => _i8.BooksBloc());
    gh.lazySingleton<_i9.GraphQLService>(() => _i9.GraphQLService());
    gh.factory<_i10.HomeRepository>(() => _i11.HomeRepositoryImpl());
    gh.factory<_i12.LessonRepository>(
        () => _i13.LessonRepositoryImpl(gh<_i3.Api>()));
    gh.lazySingleton<_i14.TestCubit>(() => _i14.TestCubit());
    gh.factory<_i15.ArticleRepository>(
        () => _i16.ArticleRepositoryImpl(gh<_i9.GraphQLService>()));
    gh.singleton<_i17.AuthBloc>(_i17.AuthBloc(gh<_i6.AuthRepository>()));
    gh.lazySingleton<_i18.HomeBloc>(
        () => _i18.HomeBloc(gh<_i10.HomeRepository>()));
    gh.lazySingleton<_i19.LessonBloc>(
        () => _i19.LessonBloc(gh<_i12.LessonRepository>()));
    gh.lazySingleton<_i20.ArticleBloc>(
        () => _i20.ArticleBloc(gh<_i15.ArticleRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
