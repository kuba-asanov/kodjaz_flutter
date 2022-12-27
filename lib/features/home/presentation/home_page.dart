import 'package:flutter/material.dart';

import '../../../core/helpers/screen_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Home page"),
      ),
    );
  }
}
