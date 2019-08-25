import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../location_detail/text_section.dart';
import 'package:toast/toast.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('مکان های دیدنی'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: locations
                    .map((location) => GestureDetector(
                          child: ListTile(
                            title: TextSection(location.name, 'IRAN'),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(location.ImagePath),
                            ),
                          ),
                          onTap: () => _onLocationTap(context, location.id),
                        ))
                    .toList(),
              ),
            ),
            RaisedButton(
              child: Text(
                "بریم به گردش",
                style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Vazir'),
              ),
              onPressed:() => _showToast(context),
              elevation: 20,
              padding: EdgeInsets.all(15),
              color: Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
            )
          ],
        ));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }

  _showToast(BuildContext context) {
    print('helo');
    Toast.show("بزن بریم", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }
}
