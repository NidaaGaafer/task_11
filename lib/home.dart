import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/material.dart';
import 'package:task_11/pages/rooms.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? checkInDate;
  DateTime? checkOutDate;
  double valuere1 = 0.0;
  double valuere2 = 0.0;
  var selectValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Android ATC Hotel"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/home.jpeg',
              fit: BoxFit.cover,
            ),
            Expanded(
                flex: 4,
                child: Container(
                  height: 500,
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Text("Check-in Date: "),
                          Text(checkInDate == null
                              ? "Select Date: "
                              : '${checkInDate!.year}- ${checkInDate!.month}- ${checkInDate!.day}'),
                          IconButton(
                              onPressed: () async {
                                var result = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2023),
                                  lastDate: DateTime(2027),
                                  barrierDismissible: false,
                                );
                                if (result != null) {
                                  checkInDate = result;
                                  setState(() {});
                                } else {
                                  checkInDate = DateTime.now();
                                  setState(() {});
                                }
                              },
                              icon: const Icon(Icons.calendar_today_rounded))
                        ],
                      ),
                      Row(
                        children: [
                          Text("Check-out Date: "),
                          Text(checkOutDate == null
                              ? "Select Date: "
                              : '${checkOutDate!.year}- ${checkOutDate!.month}- ${checkOutDate!.day}'),
                          IconButton(
                              onPressed: () async {
                                var result = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2023),
                                  lastDate: DateTime(2027),
                                  barrierDismissible: false,
                                );
                                if (result != null) {
                                  checkOutDate = result;
                                  setState(() {});
                                } else {
                                  checkOutDate = DateTime.now();
                                  setState(() {});
                                }
                              },
                              icon: const Icon(Icons.calendar_today_rounded))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Adults : $valuere1'),
                          Slider(
                              min: 0,
                              max: 4,
                              divisions: 4,
                              value: valuere1,
                              onChanged: (value) {
                                setState(() {
                                  valuere1 = value;
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Children : $valuere1'),
                          Slider(
                              min: 0,
                              max: 4,
                              divisions: 4,
                              value: valuere2,
                              onChanged: (value) {
                                setState(() {
                                  valuere2 = value;
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Extras:'),
                      FlutGroupedButtons(
                        data: <String>[
                          'Breakfas (10 USD/Day)',
                          'Internet WiFi (5 USD/Day)',
                          'Parking (5 USD/Day)',
                          'Swimming (10 USD/Day)',
                        ],
                        onChanged: (checked) => print(checked),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('View:'),
                      FlutGroupedButtons(
                        data: <String>[
                          'City View',
                          'Sea View',
                        ],
                        isRadio: true,
                        onChanged: (checked) => print(checked),
                      ),
                      Container(
                        width: 300,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => RoomsPage()));
                            },
                            child: Text('Check Room and Rate')),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
