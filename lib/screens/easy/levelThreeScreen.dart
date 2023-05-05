import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_games/screens/easylevelSceen.dart';
import 'package:maze_games/screens/settingScreen.dart';
import 'package:maze_games/widgets/finishScreen.dart';

class LevelThreeScreen extends StatefulWidget {
  int index = 0;
  LevelThreeScreen({required this.index, super.key});

  @override
  State<LevelThreeScreen> createState() => _LevelThreeScreenState();
}

class _LevelThreeScreenState extends State<LevelThreeScreen> {
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
                'assets/easy/jungle2.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Maze(
              player: MazeItem('assets/easy/bee.png', ImageType.asset),
              columns: 7,
              rows: 8,
              wallThickness: 9.0,
              wallColor: Colors.black,
              finish: MazeItem('assets/easy/house.png', ImageType.asset),
              onFinish: () {
                finishpage(context, widget.index);
              }),
        ),
      ),
    );
  }
}
