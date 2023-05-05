// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:maze_games/screens/gameSelectionScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var fullscreenHeight = MediaQuery.of(context).size.height;
    var fullscreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: fullscreenHeight,
        width: fullscreenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/ui/background1.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText('Multi    \n     Game',
                      textStyle: const TextStyle(
                        fontFamily: 'RealtimeGamer',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff51a52e),
                        fontSize: 70,
                      )),
                ],
                onTap: () {
                  print("I am executing");
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GameSelectionScreen()));
              },
              child: Image.asset(
                'assets/ui/newgame.png',
                height: fullscreenHeight * 0.1,
                width: fullscreenWidth * 0.6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
