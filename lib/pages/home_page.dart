import 'package:browser/components/custom_body.dart';
import 'package:browser/components/custom_drawer.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: custom_drawer(),
      appBar: AppBar(),
      body: custom_body(),
    );
  }
}
