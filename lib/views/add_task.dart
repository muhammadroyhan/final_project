import 'package:flutter/material.dart';

class addTask extends StatelessWidget {
  const addTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
