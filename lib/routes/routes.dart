import 'package:flutter/material.dart';
import 'package:hello_world/pages/about.dart';
import 'package:hello_world/pages/home.dart';
import 'package:hello_world/routes/args/about_page_args.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "home":
        return MaterialPageRoute(builder: (_) => const Home());

      case "about":
        final args = settings.arguments as AboutPageArgs;

        return MaterialPageRoute(builder: (_) => About(user: args.user));

      default:
        return null;
    }
  }
}
