import 'dart:convert';

import 'package:final_project/models/my_response.dart';
import 'package:final_project/models/user_model.dart';
import 'package:final_project/module/login/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController {
  LoginRepository _repository = LoginRepository();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Future<MyResponse> login() async {
    http.Response result =
        await _repository.login(emailController.text, passwordController.text);
    Map<String, dynamic> myBody = jsonDecode(result.body);
    MyResponse<User> myResponse = MyResponse.fromJson(myBody, User.fromJson);

    debugPrint("${myResponse.message}");

    return myResponse;
  }
}
