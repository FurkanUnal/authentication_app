import 'package:flutter/material.dart';
import '../View/home_page_view.dart';

Future loggedIn(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
    ),
  );
}
