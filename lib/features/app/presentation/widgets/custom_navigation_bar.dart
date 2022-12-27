import 'package:flutter/material.dart';

import '../../../../core/injection/injection.dart';
import '../bloc/app_bloc.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final AppBloc appBloc = getIt<AppBloc>();

  CustomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        appBloc.add(CurrentPageIndexChanged(index: index));
      },
      height: 60,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.qr_code_scanner_outlined),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.local_grocery_store_outlined),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.receipt_outlined),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
    // BottomNavigationBar(
    //     type: BottomNavigationBarType.fixed,
    //     backgroundColor: Colors.white,
    //     showSelectedLabels: false,
    //     showUnselectedLabels: false,
    //     selectedIconTheme: const IconThemeData(
    //       color: Colors.black,
    //     ),
    //     unselectedIconTheme: const IconThemeData(
    //       color: Colors.black87,
    //     ),
    //     enableFeedback: false,
    //     currentIndex: currentIndex,
    //     onTap: (index) {
    //       appBloc.add(CurrentPageIndexChanged(index: index));
    //     },
    //     items: const [
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: '',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.qr_code_scanner_outlined),
    //         label: '',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.local_grocery_store_outlined),
    //         label: '',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.receipt),
    //         label: '',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person_outline),
    //         label: '',
    //       )
    //     ]);
  }
}
