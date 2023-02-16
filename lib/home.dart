import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
              0.004,
              1
            ],
                colors: [
              Color(0x11232526),
              Color(0xFF232526),
            ])),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Text Generator',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Image to text Generator',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 250,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
