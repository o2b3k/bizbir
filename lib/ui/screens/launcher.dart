import 'package:bizbir/ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => new _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Home(),
      title: Text(
        'Bizbir',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.network('http://bizbir.beget.tech/storage/logo.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
      photoSize: 100.0,
    );
  }
}
