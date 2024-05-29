import 'package:flutter/material.dart';

class DoubleRoom extends StatefulWidget {
  const DoubleRoom({super.key});

  @override
  State<DoubleRoom> createState() => _DoubleRoomState();
}

class _DoubleRoomState extends State<DoubleRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 119, 63, 43),
          title: const Text(
            "Double Room",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/double.png'),
              const SizedBox(height: 30),
              const Text("price :"),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  var result = await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                            title: const Text('Do you want the Double room'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, false);
                                },
                                child: const Text('No'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, true);
                                },
                                child: const Text('Yes'),
                              ),
                            ]);
                      });
                },
                child: const Text('Click here'),
              )
            ],
          ),
        ));
  }
}
