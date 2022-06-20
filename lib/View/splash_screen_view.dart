import 'package:authentication_app/Router/login_router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Auth App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                toLoginPage(context);
              },
              child: const Text("Log in"),
            ),
            ElevatedButton(
              onPressed: () async {
                toRegisterPage(context);
              },
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
