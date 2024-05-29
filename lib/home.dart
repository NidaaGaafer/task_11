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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 1, 136),
        title: const Text(
          "Android ATC Hotel",
          style: TextStyle(color: Colors.white),
        ),
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
                  padding: const EdgeInsets.all(10),
                  height: 500,
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Check-in Date: ",
                          ),
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
                          const Text(
                            "Check-out Date: ",
                          ),
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
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      const Text('Extras:'),
                      FlutGroupedButtons(
                        data: const <String>[
                          'Breakfas (10 USD/Day)',
                          'Internet WiFi (5 USD/Day)',
                          'Parking (5 USD/Day)',
                          'Swimming (10 USD/Day)',
                        ],
                        onChanged: (checked) => print(checked),
                        checkColor: const Color.fromARGB(255, 13, 2, 109),
                        activeColor: const Color.fromARGB(255, 13, 2, 109),
                      ),
                      const SizedBox(height: 10),
                      const Text('View:'),
                      FlutGroupedButtons(
                        data: const <String>[
                          'City View',
                          'Sea View',
                        ],
                        isRadio: true,
                        onChanged: (checked) => print(checked),
                      ),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(left: 120, right: 120),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 1, 3, 122),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const RoomsPage()));
                          },
                          child: const Text(
                            'Check Room and Rate',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
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
