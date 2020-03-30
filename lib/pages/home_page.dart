import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:omnistack_bethehero_flutter/pages/details_page.dart';

import '../shared/incident_property.dart';
import '../shared/incident_value.dart';
import '../shared/details_button.dart';
import '../shared/text_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List incidentsData;
  Texts texts = Texts();

  FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 123456789);

  getIncidents() async {
    http.Response response =
        await http.get('http://192.168.1.8:3333/incidents');

    setState(() {
      incidentsData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    getIncidents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f5),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/logo@2x.png',
                    width: 100,
                  ),
                  texts.casos('Total de ', '${incidentsData.length} casos.')
                ],
              ),
            ),
            SizedBox(height: 50),
            texts.title('Bem-vindo!'),
            SizedBox(height: 20),
            texts.subTitle('Escolha um dos casos abaixo e salve o dia!'),
            SizedBox(height: 20),
            ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount:
                    incidentsData.length == 0 ? null : incidentsData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 300,
                    width: 120,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            IncidentProperty(text: 'ONG:'),
                            IncidentValue(
                              value: "${incidentsData[index]["name"]}",
                            ),
                            IncidentProperty(text: 'CASO:'),
                            IncidentValue(
                              value: "${incidentsData[index]["title"]}",
                            ),
                            IncidentProperty(text: 'VALOR:'),
                            IncidentValue(
                                value: fmf
                                    .copyWith(
                                        amount: incidentsData[index]["value"]
                                            .toDouble(),
                                        symbol: "R\$",
                                        thousandSeparator: '.',
                                        decimalSeparator: ',',
                                        symbolAndNumberSeparator: ' ')
                                    .output
                                    .symbolOnLeft),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Row(
                                children: <Widget>[
                                  DetailsButton(
                                    text: 'Ver mais detalhes',
                                    pressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Details()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
