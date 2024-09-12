/* External dependencies */
import 'package:bilimapp/features/books/presentation/books_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies */
import '../../../core/helpers/screen_util.dart';
import '../../../core/injection/injection.dart';
import '../../articles/presentation/articles_page.dart';
import '../../home/presentation/home_page.dart';
import '../../profile/presentation/profile_page.dart';
import 'bloc/app_bloc.dart';
import 'widgets/custom_navigation_bar.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  final AppBloc appBloc = getIt<AppBloc>();
  final List<Widget> _pages = const [
    HomePage(),
    // CoursesPage(),
    ArticlesPage(),
    BooksPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return BlocBuilder<AppBloc, AppState>(
      bloc: appBloc,
      buildWhen: (p, c) => p.currentPageIndex != c.currentPageIndex,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          body: _pages[state.currentPageIndex],
          bottomNavigationBar: CustomNavigationBar(
            currentIndex: state.currentPageIndex,
          ),
        );
      },
    );
  }
}
