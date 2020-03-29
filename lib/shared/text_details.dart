import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts {
  final String text;

  Texts({this.text});

  Widget title(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 30,
          color: Color(0xff13131A),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget subTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 16,
          color: Color(0xff737380),
        ),
      ),
    );
  }

  Widget casos(String text1, String text2) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: new TextSpan(
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: Color(0xff737380),
                ),
                children: <TextSpan>[
                  new TextSpan(text: text1),
                  new TextSpan(
                    text: text2,
                    style: GoogleFonts.roboto(
                      color: Color(0xff737380),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
