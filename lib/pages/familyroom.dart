import 'package:flutter/material.dart';

class FamilyRoom extends StatefulWidget {
  const FamilyRoom({super.key});

  @override
  State<FamilyRoom> createState() => _FamilyRoomState();
}

class _FamilyRoomState extends State<FamilyRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            "Family Room",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/triple.jpg'),
              const SizedBox(height: 30),
              const Text("price :"),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  var result = await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                            title: const Text('Do you want the Family room'),
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
