import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import '../Entity/user.dart';

class RegisterUser {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();


  bool canRegister = false;

  Future<void> signUp() async {
    if (password.value.text == passwordConfirm.value.text) {
      canRegister = true;
    } else {
      canRegister = false;
    }
  }
}
