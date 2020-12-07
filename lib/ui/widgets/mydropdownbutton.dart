import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({
    Key key,
  }) : super(key: key);

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(),
      onChanged: (f) => _active = f,
      value: _active,
      style: Theme.of(context).textTheme.caption,
      items: [
        DropdownMenuItem(child: Text("Топ-менеджмент"), value: 0),
        DropdownMenuItem(child: Text("Некоммерческие организации"), value: 1),
        DropdownMenuItem(child: Text("Интернет, IT"), value: 2),
        DropdownMenuItem(child: Text("Маркетинг, реклама"), value: 3),
        DropdownMenuItem(child: Text("Продажи (работа в офисе)"), value: 4),
      ],
    );
  }
}
