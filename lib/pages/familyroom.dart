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
          title: Text(
            "Family Room",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/triple.jpg'),
              SizedBox(height: 30),
              Text("price :"),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  var result = await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                            title: Text('Do you want the Family room'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, false);
                                },
                                child: Text('No'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, true);
                                },
                                child: Text('Yes'),
                              ),
                            ]);
                      });
                },
                child: Text('Click here'),
              )
            ],
          ),
        ));
    ;
  }
}
