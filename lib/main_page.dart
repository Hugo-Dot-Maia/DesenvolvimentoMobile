import 'package:flutter/material.dart';

import 'menu_lateral_direito.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Data Games'),
      ),
    );
  }
}

