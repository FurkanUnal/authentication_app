import 'package:authentication_app/Interactor/register_interactor.dart';
import 'package:flutter/material.dart';

class RegisterPresenter extends RegisterUser {
  Future<Widget> register(BuildContext context) async {
    if (!(username == null || password == null || passwordConfirm == null)) {
      await signUp();
      if (canRegister) {
        const snackBar = SnackBar(
          content: Text("You have been registered successfully"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
