import 'package:flutter/material.dart';
import 'package:hello_world/models/user.dart';
import 'package:hello_world/routes/args/about_page_args.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            FilledButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("about",
                      arguments: AboutPageArgs(
                          user: User(
                              sid: 1,
                              name: "Shanta",
                              email: "example@gmail.com")));
                },
                child: const Text("About"))
          ],
        ),
      ),
    );
  }
}
