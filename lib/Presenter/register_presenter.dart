import 'package:authentication_app/Interactor/register_interactor.dart';
import 'package:flutter/material.dart';
import '../Entity/user.dart';
import '../Interactor/login_interactor.dart';
import '../Router/login_router.dart';

class RegisterPresenter extends RegisterUser {
  Future<Widget> register(BuildContext context) async {
    if (!(username == null || password == null || passwordConfirm == null)) {
      signUp();
      if (canRegister) {
        const snackBar = SnackBar(
          content: Text("You have been registered successfully"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        User user =
            User(username: username.value.text, password: password.value.text);
      } else {
        const snackBar = SnackBar(
          content: Text("Password and Confirm Password are not matched!"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
    return Container();
  }
}
