import 'package:flutter/material.dart';

class Texts {
  final String text;

  Texts({this.text});

  Widget title(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Text(
        text,
        style: TextStyle(
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
        style: TextStyle(fontSize: 15, color: Color(0xff737380)),
      ),
    );
  }

  Widget casos(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
