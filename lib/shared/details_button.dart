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
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
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
                      fontSize: 16,
                      color: Color(0xFFE92041),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          iconSize: 20.0,
                          onPressed: null,
                          icon: Icon(Icons.arrow_forward),
                          disabledColor: Color(0xFFE92041),
                          focusColor: Color(0xFFE92041),
                          highlightColor: Color(0xFFE92041),
                          hoverColor: Color(0xFFE92041),
                          splashColor: Color(0xFFE92041),
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
