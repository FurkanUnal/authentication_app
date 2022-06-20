import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterUser {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();
  bool canRegister = false;

  Future<String> signUp() async {
    var response = await http.post(
        Uri.parse("http://192.168.1.108:8080/authenticationapp/register.php"),
        body: {"username": username.text, "password": password.text});
    if (response.statusCode == 200) {
      var data = jsonDecode(utf8.decode(response.bodyBytes));
      if (data == "success" &&
          (password.text == passwordConfirm.text)) {
        canRegister = true;
      } else {
        canRegister = false;
      }
      return data;
    } else {
      throw Exception('Failed to load the database');
    }
  }
}
