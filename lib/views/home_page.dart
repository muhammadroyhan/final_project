import 'package:final_project/views/tabbar_page.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TabbarScreen(),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home",
            style: GoogleFonts.urbanist(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  UniconsLine.setting,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 4,
              ),
            ],
          ),
        ],
      ),
      body: Scaffold(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
