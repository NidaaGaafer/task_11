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
        body: Center(
      child: Column(
        children: [
          Image.asset('assets/king.jpg'),
          SizedBox(height: 30),
          Text("price :"),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              var result = await showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                        title: Text('Do you want the king room'),
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
