// ignore_for_file: prefer_const_constructors

import 'package:final_project/views/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                "Login",
                style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
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
                  labelText: 'Email',
                  labelStyle: GoogleFonts.urbanist(color: Colors.black54),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: GoogleFonts.urbanist(),
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
                child: Text(
                  'Login',
                  style: GoogleFonts.urbanist(
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              // ignore: sort_child_properties_last
              children: <Widget>[
                Text(
                  "Doesn't have an account?",
                  style: GoogleFonts.urbanist(
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
