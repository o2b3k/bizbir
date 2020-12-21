import 'package:flutter/material.dart';

class ExperienceLevelWidget extends StatefulWidget {
  const ExperienceLevelWidget({
    Key key,
  }) : super(key: key);

  @override
  _ExperienceLevelWidgetState createState() => _ExperienceLevelWidgetState();
}

class _ExperienceLevelWidgetState extends State<ExperienceLevelWidget> {
  int _active = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                _active = 0;
              });
            },
            child: Text(
              "Без опыта",
              style: _active == 0
                  ? Theme.of(context)
                      .textTheme
                      .headline
                      .apply(color: Colors.blue)
                  : Theme.of(context)
                      .textTheme
                      .subtitle
                      .apply(color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _active = 1;
              });
            },
            child: Text(
              "1 год опыта",
              style: _active == 1
                  ? Theme.of(context)
                      .textTheme
                      .headline
                      .apply(color: Colors.blue)
                  : Theme.of(context)
                      .textTheme
                      .subtitle
                      .apply(color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _active = 2;
              });
            },
            child: Text(
              "2-5 лет опыта",
              style: _active == 2
                  ? Theme.of(context)
                      .textTheme
                      .headline
                      .apply(color: Colors.blue)
                  : Theme.of(context)
                      .textTheme
                      .subtitle
                      .apply(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
