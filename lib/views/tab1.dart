import 'package:flutter/material.dart';

import 'add_task.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 3.0,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.task_alt,
                  color: Colors.grey,
                ),
                child: Text(
                  'To Do',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.comment_outlined,
                  color: Colors.grey,
                ),
                child: Text(
                  'Comment',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.done_all,
                  color: Colors.grey,
                ),
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () => addTask(),
                tooltip: 'add',
                backgroundColor: Colors.black,
                child: Icon(Icons.add)),
              ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            
          ],
        ),
      ),
    );
  }
}