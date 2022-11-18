// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(primary: Colors.black),
            ),
          ),
          Row(
            // ignore: sort_child_properties_last
            children: <Widget>[
              Text("Doesn't have an account?"),
              TextButton(
                onPressed: () {
                  // Sign Up Page
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            // ignore: sort_child_properties_last
            children: <Widget>[
              Text("Forgot Password?"),
              TextButton(
                onPressed: () {
                  // Sign Up Page
                },
                child: Text(
                  'Sent Now',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
