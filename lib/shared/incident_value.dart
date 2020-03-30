import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IncidentValue extends StatelessWidget {
  final String value;

  IncidentValue({this.value});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
        child: Text(
          value,
          style: GoogleFonts.roboto(
            fontSize: 15,
            color: Color(0xff737380),
          ),
        ),
      );
    });
  }
}
