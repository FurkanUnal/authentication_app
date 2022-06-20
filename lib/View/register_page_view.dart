import 'package:authentication_app/Presenter/register_presenter.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  RegisterPresenter presenter = RegisterPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: presenter.passwordConfirm,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Confirm the Password"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () async {
                    presenter.register(context);
                  },
                  child: const Text("Register"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
