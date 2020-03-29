import 'package:flutter/material.dart';

class IncidentValue extends StatelessWidget {
  final String value;

  IncidentValue({this.value});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
        child: Text(
          value,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xff737380),
          ),
        ),
      );
    });
  }
}
