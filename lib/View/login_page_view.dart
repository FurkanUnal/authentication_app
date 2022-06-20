import 'package:authentication_app/Router/router.dart';
import 'package:flutter/material.dart';
import 'package:authentication_app/Interactor/login_interactor.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  LoginUser loginUser = LoginUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: LoginUser.username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: LoginUser.password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    if(loginUser.isAuthenticated()){
                      loggedIn(context);
                    }
                    const snackBar = SnackBar(
                      content: Text("Username or Password is incorrect!"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Log in"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
