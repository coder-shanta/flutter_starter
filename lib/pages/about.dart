import 'package:flutter/material.dart';
import 'package:hello_world/models/user.dart';

class About extends StatelessWidget {
  final User user;
  const About({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("About Page"), Text("Data: ${user.name}")],
        ),
      ),
    );
  }
}
