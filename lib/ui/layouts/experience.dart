import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience(
      {@required this.title,
      @required this.description,
      @required this.icon,
      Key key})
      : super(key: key);
  final String title, description;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            title:
                Text('$title', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('$description'),
            leading: Icon(
              icon,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    );
  }
}
