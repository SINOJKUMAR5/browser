import 'package:flutter/material.dart';

class custom_drawer extends StatelessWidget {
  const custom_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [DrawerHeader(child: Icon(Icons.settings))],
      ),
    );
  }
}
