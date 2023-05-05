import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_games/screens/easylevelSceen.dart';
import 'package:maze_games/screens/settingScreen.dart';
import 'package:maze_games/widgets/finishScreen.dart';

class LevelTwoScreen extends StatefulWidget {
  int index = 0;
  LevelTwoScreen({required this.index, super.key});

  @override
  State<LevelTwoScreen> createState() => _LevelTwoScreenState();
}

class _LevelTwoScreenState extends State<LevelTwoScreen> {
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
                        builder: (context) => const EasyLevelScreen()));
              },
              child: Image.asset('assets/ui/back.png')),
        ),
        title: Text(
          'Level ${widget.index}',
          style: const TextStyle(
            fontFamily: 'RealtimeGamer',
            fontWeight: FontWeight.bold,
            color: Color(0xffc2dd8e),
            fontSize: 35,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingScreen()));
                },
                child: Image.asset('assets/ui/setting.png')),
          )
        ],
      ),
      body: Container(
        height: fullscreenHeight,
        width: fullscreenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/easy/swimming.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Maze(
              player: MazeItem('assets/easy/swim1.png', ImageType.asset),
              columns: 5,
              rows: 7,
              wallThickness: 9.0,
              wallColor: Colors.redAccent,
              finish: MazeItem('assets/easy/tube1.png', ImageType.asset),
              onFinish: () {
                finishpage(context, widget.index);
              }),
        ),
      ),
    );
  }
}
