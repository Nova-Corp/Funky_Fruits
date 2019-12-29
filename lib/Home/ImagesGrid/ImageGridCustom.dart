import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:funky_fruits/Home/ImagesGrid/ImageModel.dart';
import 'dart:convert';

class ImageGridCustom extends StatefulWidget {
  final String opt;
  const ImageGridCustom({Key key, this.opt}): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ImageGridCustom();
  }
}

class _ImageGridCustom extends State<ImageGridCustom> {
  Future<List<ImageModel>> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(
            "https://api.unsplash.com/photos"+widget.opt+"?client_id=038865ae4edb7c4e2aeb2af607e890526108163ad9a40a13da98ca1185404d03&count=10"),
        headers: {"Accept": "*/*"});

    if (response.statusCode == 200) {
      List<ImageModel> imageModelFromJson(String str) => List<ImageModel>.from(
          json.decode(str).map((x) => ImageModel.fromJson(x)));
      List<ImageModel> imageModel = [];
      imageModel.addAll(imageModelFromJson(response.body));
      return imageModel;
    } else {
      throw Exception('Failed to load post');
    }
  }

  Card customCardView(int i, List<ImageModel> img) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Container(
          child: Image.network(
            img[i].urls.thumb,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.6),
                itemBuilder: (_, index) => customCardView(index, snapshot.data),
                itemCount: snapshot.data.length,
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error);
            }
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.red[800]),
              ),
            );
          },
        ),
      ),
    );
  }
}
