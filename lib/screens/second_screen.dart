import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<int> items = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Task Board",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 247, 247, 247),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            DateTime now = DateTime.now();
            List<String> months = [
              'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
            ];

          String _getDaySuffix(int day) {
            if (day >= 11 && day <= 13) {
              return '$day' + 'th';
            } else if (day % 10 == 1) {
              return '$day' + 'st';
            } else if (day % 10 == 2) {
              return '$day' + 'nd';
            } else if (day % 10 == 3) {
              return '$day' + 'rd';
            } else {
              return '$day' + 'th';
            }
          }

          String _getTime(int hour, int minute) {
            String ampm;
            if (hour == 0) {
              hour = 12;
              ampm = 'AM';
            } else if (hour > 12) {
              hour -= 12;
              ampm = 'PM';
            } else {
              ampm = 'AM';
            }
            return "${hour}:${minute.toString().padLeft(2, '0')} $ampm";
          }

            String formattedDate = "${_getTime(now.hour, now.minute)} ${_getDaySuffix(now.day)} ${months[now.month-1]}, ${now.year}";
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                color: Color.fromARGB(252, 247, 247, 247),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text (
                          "Task " + items[index].toString(),
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 2),
                        const Text (
                          "Your Personal task management and planning solution for planning your day, week \& months",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "$formattedDate",
                            style: TextStyle(fontSize: 14),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            items.add(items.length+1);
          });
        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: const Color.fromARGB(255, 25, 25, 25),
      ),
    );
  }
}
