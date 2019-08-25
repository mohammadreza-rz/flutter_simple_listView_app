import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title, _body;
  static const double _hpad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
            child: Text(
              _title,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.title,
            )),
        Container(
          padding: EdgeInsets.fromLTRB(_hpad, 0, _hpad, 0),
          child: Text(
            _body,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.body1,
          ),
        ),
      ],
    );
  }
}
