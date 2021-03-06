import 'package:authentication_app/Presenter/login_presenter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  LoginPresenter presenter = LoginPresenter();

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
                controller: presenter.username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: presenter.password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () async {
                    presenter.login(context);
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



