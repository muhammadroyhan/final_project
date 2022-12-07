import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  late DateTime startDate;
  late DateTime endDate;
  late TimeOfDay startTime;
  late TimeOfDay endTime;
  bool allDay = false;
  String desc = '';
  String taskName = '';
  
  void initState() {
    startDate = DateTime.now();
    endDate = DateTime.now();
    startTime = TimeOfDay.now();
    endTime = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.cancel),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            ListTile(
              title: TextField(
                controller: TextEditingController(text: taskName),
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Task Name',
                ),
              ),
            ),
            Divider(
              height: 3.0,
              thickness: 2.0,
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 2, 10, 2),
              leading: Text(
                'Start',
                style: TextStyle(fontSize: 17),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      child: Text(
                          DateFormat('EEE, MMM dd yyyy').format(startDate),
                          textAlign: TextAlign.left),
                      onTap: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: startDate,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null && pickedDate != startDate) {
                          setState(() {
                            final Duration difference =
                                endDate.difference(startDate);
                            startDate = DateTime(
                                pickedDate.year,
                                pickedDate.month,
                                pickedDate.day,
                                startTime.hour,
                                startTime.minute,
                                0);
                            endDate = startDate.add(difference);
                            endTime = TimeOfDay(
                                hour: endDate.hour, minute: endDate.minute);
                          });
                        } else {}
                      },
                    ),
                  ),
                  /*Tanggal memulai task */
                  Expanded(
                      flex: 3,
                      child: allDay
                          ? Text('')
                          : GestureDetector(
                              child: Text(
                                DateFormat('hh:mm a').format(startDate),
                                textAlign: TextAlign.right,
                              ),
                              onTap: () async {
                                TimeOfDay? time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay(
                                      hour: startTime.hour,
                                      minute: startTime.minute),
                                );
                                if (time != null && time != startTime) {
                                  setState(() {
                                    startTime = time;
                                    Duration difference =
                                        endDate.difference(startDate);
                                    startDate = DateTime(
                                        startDate.year,
                                        startDate.month,
                                        startDate.day,
                                        startTime.hour,
                                        startTime.minute,
                                        0);
                                    endDate = startDate.add(difference);
                                    endTime = TimeOfDay(
                                        hour: endDate.hour,
                                        minute: endDate.minute);
                                  });
                                }
                              })), /*Waktu memulai task */
                ],
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 2, 10, 2),
              leading: Text(
                'End',
                style: TextStyle(fontSize: 17),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      child: Text(
                          DateFormat('EEE, MMM dd yyyy').format(endDate),
                          textAlign: TextAlign.left),
                      onTap: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: endDate,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null && pickedDate != endDate) {
                          setState(() {
                            final Duration difference =
                                endDate.difference(startDate);
                            endDate = DateTime(
                                pickedDate.year,
                                pickedDate.month,
                                pickedDate.day,
                                endTime.hour,
                                endTime.minute,
                                0);
                            if (endDate.isBefore(startDate)) {
                              startDate = endDate.subtract(difference);
                              startTime = TimeOfDay(
                                  hour: startDate.hour,
                                  minute: startDate.minute);
                            }
                          });
                        }
                      },
                    ),
                  ),
                  /*Tanggal memulai task */
                  Expanded(
                      flex: 3,
                      child: allDay
                          ? Text('')
                          : GestureDetector(
                              child: Text(
                                DateFormat('hh:mm a').format(endDate),
                                textAlign: TextAlign.right,
                              ),
                              onTap: () async {
                                TimeOfDay? time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay(
                                      hour: endTime.hour,
                                      minute: endTime.minute),
                                );
                                if (time != null && time != endTime) {
                                  setState(() {
                                    endTime = time;
                                    Duration difference =
                                        endDate.difference(startDate);
                                    endDate = DateTime(
                                        endDate.year,
                                        endDate.month,
                                        endDate.day,
                                        endTime.hour,
                                        endTime.minute,
                                        0);
                                    endDate = startDate.add(difference);
                                    if (endDate.isBefore(startDate)) {
                                      startDate = endDate.subtract(difference);
                                      startTime = TimeOfDay(
                                          hour: startDate.hour,
                                          minute: startDate.minute);
                                    }
                                  });
                                }
                              })), /*Waktu memulai task */
                ],
              ),
            ),
            Divider(
              height: 3.0,
              thickness: 2.0,
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
              leading: Icon(Icons.subject),
              title: TextField(
                controller: TextEditingController(text: desc),
                onChanged: (String value) {
                  desc = value;
                },
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add Description',
                ),
              ),
            ),
            Divider(
              height: 3.0,
              thickness: 2.0,
            ),
            SizedBox(height: 255),
            Divider(
              height: 3.0,
              thickness: 2.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.white)),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
