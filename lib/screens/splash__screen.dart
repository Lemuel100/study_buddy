import 'dart:async';

import 'package:flutter/material.dart';
import 'package:study_buddy/components/app_image__component.dart';
import 'package:study_buddy/screens/login__screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  startTimer() {
    _timer = Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  stopTimer() {
    _timer.cancel();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    stopTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const AppImage(
            imageUrl: 'assets/imgs/splash_three.jpg',
            flex: 3,
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Spacer(),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildImage("assets/imgs/imgOne.jpg"),
                        const SizedBox(
                          width: 16,
                        ),
                        _buildImage("assets/imgs/imgTwo.jpg"),
                      ],
                    ))
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String imgUrl) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.amber),
        height: 50,
        width: 50,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            imgUrl,
          ),
        ),
      );
}
