import 'package:flutter/material.dart';
import 'package:task_11/pages/doupleroom.dart';
import 'package:task_11/pages/familyroom.dart';
import 'package:task_11/pages/kingroom.dart';
import 'package:task_11/widgets.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({super.key});

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Rooms List"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImText(
                        path: 'king.jpg',
                        name: 'King Room',
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => KingRoom()));
                          },
                          icon: Icon(Icons.keyboard_control_key))
                    ],
                  ),
                  Text('A room with a king-sized bed')
                ],
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImText(
                        path: 'double.png',
                        name: 'Double Room',
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => DoubleRoom()));
                          },
                          icon: Icon(Icons.keyboard_control_key))
                    ],
                  ),
                  Text('A room assigned to two people')
                ],
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImText(
                        path: 'triple.jpg',
                        name: 'Family Room',
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => FamilyRoom()));
                          },
                          icon: Icon(Icons.keyboard_control_key))
                    ],
                  ),
                  Text('A room a ssigned to three or four people')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
