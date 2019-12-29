import 'package:flutter/material.dart';

class SearchFieldCustom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchFieldCustom();
  }
}

class _SearchFieldCustom extends State<SearchFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(228, 228, 229, 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 17),
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
