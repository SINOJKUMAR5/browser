import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class custom_body extends StatefulWidget {
  const custom_body({super.key});

  @override
  State<custom_body> createState() => _custom_bodyState();
}

// ignore: camel_case_types
class _custom_bodyState extends State<custom_body> {
  // ignore: non_constant_identifier_names
  Future lanch_url(String url) async {
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 600,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(2, 4)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary),
                child: IconButton(
                  onPressed: () {
                    lanch_url('https://www.bing.com/');
                  },
                  icon: Image.asset("assets/serch_engine_icons/bing.png"),
                  iconSize: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(2, 4)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary),
                child: IconButton(
                  onPressed: () {
                    lanch_url('https://www.google.com/');
                  },
                  icon: Image.asset("assets/serch_engine_icons/chrome.png"),
                  iconSize: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(2, 4)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary),
                child: IconButton(
                  onPressed: () {
                    lanch_url('https://in.search.yahoo.com/?fr2=inr');
                  },
                  icon: Image.asset("assets/serch_engine_icons/yahoo.png"),
                  iconSize: 60,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(2, 4)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary),
                child: IconButton(
                  onPressed: () {
                    lanch_url('https://duckduckgo.com/');
                  },
                  icon: Image.asset("assets/serch_engine_icons/duck.png"),
                  iconSize: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(2, 4)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/serch_engine_icons/fox.png"),
                  iconSize: 60,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
