import 'package:browser/pages/light_theme_page.dart';
import 'package:browser/pages/theme_provider_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class setting_page extends StatefulWidget {
  const setting_page({Key? key}) : super(key: key);

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Center(
          child: Text("S e t t i n g",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary)),
        ),
      ),
      body: Center(
        child: CupertinoSwitch(
          value: Provider.of<ThemeProvider>(context, listen: false).isdark,
          onChanged: (value) {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
        ),
      ),
    );
  }
}
