/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies */
import '../../../core/injection/injection.dart';
import '../../home/presentation/home_page.dart';
import 'bloc/app_bloc.dart';
import 'widgets/custom_navigation_bar.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  final AppBloc appBloc = getIt<AppBloc>();
  final List<Widget> _pages = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
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
