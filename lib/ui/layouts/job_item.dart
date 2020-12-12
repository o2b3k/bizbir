import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  const JobItem({Key key, @required this.title, @required this.description})
      : super(key: key);
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          Divider(),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
