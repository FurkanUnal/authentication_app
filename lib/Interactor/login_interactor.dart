import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import '../Entity/user.dart';


class LoginUser {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  List<User> users = [];
  User admin = User(username: "admin", password: "123");


  bool isAuthenticated = false;

  Future<void> signIn() async {
    if (username.value.text == admin.username &&
        password.value.text == admin.password) {
      isAuthenticated = true;
    } else {
      isAuthenticated = false;
    }
  }
}
