import 'package:flutter/material.dart';
import 'package:funky_fruits/Home/ImagesGrid/ImageGridCustom.dart';

class DropDownBoxCustom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropDownBoxCustom();
  }
}

class _DropDownBoxCustom extends State<DropDownBoxCustom> {
  String opt;
  String _value;
  List<String> _values = new List<String>();
  @override
  void initState() {
    _values.addAll(["Most Popular", "Most Recent", "Featured"]);
    _value = _values.elementAt(0);
    opt = "";
  }

  void onChanged(String value) {
    setState(() {
      _value = value;
      switch (value) {
        case "Most Popular":
          opt = "/random/";
          break;
        case "Most Recent":
          opt = "";
          break;
        default:
          opt = "";
      }
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            DropdownButtonHideUnderline(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: DropdownButton(
                value: _value,
                items: _values.map((String value) {
                  return new DropdownMenuItem(
                    child: Row(
                      children: <Widget>[
                        Text(
                          value,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )
                      ],
                    ),
                    value: value,
                  );
                }).toList(),
                onChanged: (String value) {
                  onChanged(value);
                },
              ),
            )),
          ],
        ),
        ImageGridCustom(opt: opt)
      ],
    );
  }
}
