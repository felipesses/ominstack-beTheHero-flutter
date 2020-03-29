import 'package:flutter/material.dart';

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
                    style: TextStyle(
                      color: Color(0xFFe02041),
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
