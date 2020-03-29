import 'package:flutter/material.dart';

class IncidentProperty extends StatelessWidget {
  final String text;

  IncidentProperty({this.text});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: Text(
          '${text}',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff41414D),
              fontWeight: FontWeight.bold),
        ),
      );
    });
  }
}
