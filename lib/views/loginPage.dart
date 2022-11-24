// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_project/views/home_page.dart';
import 'package:final_project/views/menu_screen.dart';
import 'package:final_project/views/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              "Login",
              style: GoogleFonts.urbanist(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(
              "Login to your account",
              style: GoogleFonts.urbanist(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'User Name',
                labelStyle: GoogleFonts.urbanist(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'Password',
                labelStyle: GoogleFonts.urbanist(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'Login',
                style: GoogleFonts.urbanist(
                  fontSize: 16,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Image.asset(
              "assets/images/logo.png",
              width: 200,
              height: 200,
            ),
          ),
          Row(
            // ignore: sort_child_properties_last
            children: <Widget>[
              Text(
                "Doesn't have an account?",
                style: GoogleFonts.urbanist(
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Sign Up Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Text(
                  'Register Now',
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            // ignore: sort_child_properties_last
            children: <Widget>[
              Text(
                "Forgot Password?",
                style: GoogleFonts.urbanist(
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Sign Up Page
                },
                child: Text(
                  'Sent Now',
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
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
