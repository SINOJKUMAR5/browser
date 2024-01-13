import 'package:browser/pages/home_page.dart';
import 'package:browser/pages/setting_page.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.music_note,
              size: 50,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 25),
            child: ListTile(
              title: Text(
                "H o m e",
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return home_page();
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 25),
            child: ListTile(
              title: Text(
                "S e t t i n g",
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return setting_page();
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 25),
            child: ListTile(
              title: Text(
                "A c c o u n t",
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              leading: Icon(
                Icons.face,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
