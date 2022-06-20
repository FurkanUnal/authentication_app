import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginUser {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isAuthenticated = false;

  Future<String> signIn() async {
    var response = await http.post(
        Uri.parse("http://192.168.1.108:8080/authenticationapp/login.php"),
        body: {"username": username.text, "password": password.text});
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data == "success") {
        isAuthenticated = true;
      } else {
        isAuthenticated = false;
      }
      return data;
    } else {
      throw Exception('Failed to load the database');
    }
  }
}
