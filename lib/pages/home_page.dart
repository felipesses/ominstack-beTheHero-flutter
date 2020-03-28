import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List ongsData;

  getOngs() async {
    http.Response response = await http.get('http://192.168.1.8:3333/ongs');

    setState(() {
      ongsData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    getOngs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Be The Hero"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ongsData == null ? 0 : ongsData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text("${ongsData[index]["name"]}",
                      style: TextStyle(fontSize: 20)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
