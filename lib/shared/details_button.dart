import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsButton extends StatelessWidget {
  final String text;
  final Function pressed;

  DetailsButton({this.text, this.pressed});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
        child: Row(
          children: <Widget>[
            FlatButton(
              onPressed: pressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    text,
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Color(0xFFe02041),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFe02041),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
