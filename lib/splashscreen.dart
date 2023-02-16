import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Home(),
      title: const Text(
        'Text Generator',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Colors.white,
        ),
      ),
      gradientBackground: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0x11232526),
            Color(0xFF232526),
          ],
          stops: [
            0.004,
            1
          ]),
      image: Image.asset('assets/notepad.png'),
      photoSize: 120,
      loaderColor: Colors.white,
    );
  }
}
