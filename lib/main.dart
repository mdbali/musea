// default package
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import const
import 'package:musea/app/const/colors.dart';

// import layout
import 'package:musea/app/layouts/splash.dart';

// import page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const colors = MuseaColors();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: const Splash(),
    );
  }
}