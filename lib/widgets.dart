import 'package:flutter/material.dart';

class ImText extends StatelessWidget {
  String path = "";
  String name = '';
  ImText({required this.name, required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/$path',
          width: 100,
          height: 100,
        ),
        SizedBox(width: 100),
        Container(width: 50, child: Text('$name')),
      ],
    ));
  }
}
