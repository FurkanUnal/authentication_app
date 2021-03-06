import 'package:flutter/material.dart';
import '../Interactor/login_interactor.dart';
import '../Router/login_router.dart';

class LoginPresenter extends LoginUser {
  Future<Widget> login(BuildContext context) async {
    if (!(username == null || password == null)) {
      await signIn();
      if (isAuthenticated) {
        const snackBar = SnackBar(
          content: Text("You have been logged in successfully"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        loggedIn(context);
      } else {
        const snackBar = SnackBar(
          content: Text("Username or Password is incorrect!"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
    return Container();
  }
}
