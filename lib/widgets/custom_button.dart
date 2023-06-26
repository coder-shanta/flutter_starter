import 'package:flutter/material.dart';
import 'package:hello_world/models/user.dart';
import 'package:hello_world/routes/args/about_page_args.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed("about",
          arguments: AboutPageArgs(
              user: User(sid: 2, name: "Test`", email: "test@gmail.com"))),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.red,
        ),
        child: const Text(
          "Click Me",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
