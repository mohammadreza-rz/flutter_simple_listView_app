import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: SingleChildScrollView(
            child: Wrap(
          children: <Widget>[
            Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              ImageBanner(location.ImagePath),
            ]..addAll(textSections(location)) //this is cascading
                ),
          ],
        )));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
