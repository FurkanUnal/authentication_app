import 'package:flutter/material.dart';
import '../Entity/user.dart';

class LoginUser {
  static TextEditingController username = TextEditingController();
  static TextEditingController password = TextEditingController();

  User admin = User(username: "admin", password: "123");

  bool isAuthenticated() {
    if (username.value.text == admin.username &&
        password.value.text == admin.password) {
      return true;
    }
    return false;
  }
}
