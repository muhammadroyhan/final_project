import 'package:final_project/models/addtask_models.dart';
import 'package:final_project/views/add_task.dart';
import 'package:final_project/views/mywork.dart';
import 'package:final_project/views/tab2.dart';
import 'package:final_project/views/tabbar_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TabbarScreen(),
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
            child: Text(
              'Home',
              style: GoogleFonts.urbanist(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(children: [
                SizedBox(height: 10),
                Container(
                  // height: 20,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Colors.white,
                          labelColor: Colors.black,
                          indicatorColor: Colors.lightBlue,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'My Work',
                            ),
                            Tab(
                              text: 'Calendar',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      MyWork(),
                      Tab2(),
                    ],
                  ),
                )
              ])),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => addTask(),
              ),
            );
          },
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
