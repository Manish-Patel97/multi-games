import 'package:flutter/material.dart';
import 'package:align_positioned/align_positioned.dart';
import 'package:maze_games/screens/easy/brainGame/brainGamelevelScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/find3DifferencelevelScreen.dart';

import 'package:maze_games/screens/easylevelSceen.dart';
import 'package:maze_games/screens/splashScreen.dart';

class GameSelectionScreen extends StatefulWidget {
  const GameSelectionScreen({super.key});

  @override
  State<GameSelectionScreen> createState() => _GameSelectionScreenState();
}

class _GameSelectionScreenState extends State<GameSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    var fullscreenHeight = MediaQuery.of(context).size.height;
    var fullscreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()));
              },
              child: Image.asset('assets/ui/back.png')),
        ),
        title: const Text(
          'Select Game',
          style: TextStyle(
            fontFamily: 'RealtimeGamer',
            fontWeight: FontWeight.bold,
            color: Color(0xff51a52e),
            fontSize: 35,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset('assets/ui/setting.png'),
          )
        ],
      ),
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
          child: SizedBox(
            height: fullscreenHeight,
            width: fullscreenWidth,
            child: Stack(children: [
              AlignPositioned(
                  alignment: Alignment.center,
                  child: Image.asset('assets/ui/board.png')),
              AlignPositioned(
                alignment: Alignment.topLeft,
                dx: fullscreenWidth * 0.28,
                dy: fullscreenHeight * 0.35,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EasyLevelScreen()));
                  },
                  child: const Text(
                    'Maze Game',
                    style: TextStyle(
                      fontFamily: 'RealtimeGamer',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 249, 120, 51),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              AlignPositioned(
                alignment: Alignment.topLeft,
                dx: fullscreenWidth * 0.15,
                dy: fullscreenHeight * 0.45,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Find3DifferenceLevelScreen()));
                  },
                  child: const Text(
                    'Find 3 Difference',
                    style: TextStyle(
                      fontFamily: 'RealtimeGamer',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 249, 120, 51),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              AlignPositioned(
                alignment: Alignment.topLeft,
                dx: fullscreenWidth * 0.2,
                dy: fullscreenHeight * 0.55,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BrainGameLevelScreen()));
                  },
                  child: const Text(
                    'Jigsaw Puzzle',
                    style: TextStyle(
                      fontFamily: 'RealtimeGamer',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 249, 120, 51),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              // Positioned(
              //     child: Container(
              //   color: Colors.red,
              //   height: 10,
              //   width: 20,
              // ))
            ]),
          )),
    );
  }
}
