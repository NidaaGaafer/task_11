import 'package:flutter/material.dart';

class KingRoom extends StatefulWidget {
  const KingRoom({super.key});

  @override
  State<KingRoom> createState() => _KingRoomState();
}

class _KingRoomState extends State<KingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 90, 56, 43),
          title: const Text(
            "king Room",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/king.PNG'),
              const SizedBox(height: 30),
              const Text("price :"),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  var result = await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                            title: const Text('Do you want the king room'),
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
