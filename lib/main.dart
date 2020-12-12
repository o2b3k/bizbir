import 'package:bizbir/ui/screens/launcher.dart';
import 'package:flutter/material.dart';
import 'package:bizbir/models/bizbir_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BizbirModel>(
      create: (_) => BizbirModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BizBir',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'OpenSans',
        ),
        home: Launcher(),
      ),
    );
  }
}
