import 'package:flutter/material.dart';
import 'package:funky_fruits/Home/DropDownCustom.dart';
import 'package:funky_fruits/Home/SearchFieldCustom.dart';
import 'package:funky_fruits/Home/ImagesGrid/ImageGridCustom.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Funky Fruits",
      home: Scaffold(
          appBar: null,
          body: ListView(
            children: <Widget>[
              Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Text(
                              "Funky Fruits",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SearchFieldCustom(),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  )),
              DropDownBoxCustom(),
              // ImageGridCustom()
            ],
          )),
    );
  }
}
