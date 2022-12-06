import 'package:flutter/material.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Title",
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}