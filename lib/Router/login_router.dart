import 'package:authentication_app/View/home_page_view.dart';
import 'package:authentication_app/View/login_page_view.dart';
import 'package:flutter/material.dart';

import '../View/register_page_view.dart';

Future loggedIn(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
    ),
  );
}

Future toLoginPage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LoginPage(),
    ),
  );
}

Future toRegisterPage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => RegisterPage(),
    ),
  );
}
