// default package
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import const
import 'package:musea/app/const/colors.dart';

// import pages
import 'package:musea/app/pages/login.dart';

class Splash extends StatefulWidget {
  const Splash({ Key key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context){
    // Hide status bar when splashscreen mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      backgroundColor: const MuseaColors().museaPrimary,
      body: Stack(
        children: [
          Container(
            alignment: const Alignment(0,0),
            width: double.infinity,
            height: double.infinity,

            // Setup Backgound SplashScreen
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              )
            ),

            // logo app on SplshScreen
            child: Positioned(
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.width * 0.40,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 160,
                      height: 160,
                    ),
                  ],
                ),
              ),
            )
          )
        ],
      )
    );
  }
}