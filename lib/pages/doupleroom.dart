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
        body: Center(
      child: Column(
        children: [
          Image.asset('assets/double.png'),
          SizedBox(height: 30),
          Text("price :"),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              var result = await showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                        title: Text('Do you want the Double room'),
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
  }
}
