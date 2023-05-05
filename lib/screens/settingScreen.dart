import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:maze_games/screens/easylevelSceen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
        title: const Text(
          'Setting',
          style: TextStyle(
            fontFamily: 'RealtimeGamer',
            fontWeight: FontWeight.bold,
            color: Color(0xffc2dd8e),
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
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [
              Color(0xffeef3dc),
              Color(0xffe2edc3),
              Color(0xffc8dc95),
              Color(0xffb0804f),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: fullscreenHeight * 0.6,
                width: fullscreenWidth,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ui/settingboard.png'))),
                child: Stack(
                  children: [
                    AlignPositioned(
                      alignment: Alignment.topLeft,
                      dx: fullscreenWidth * 0.0,
                      dy: fullscreenHeight * 0.11,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/ui/volume.png',
                            height: fullscreenHeight * 0.07,
                            width: fullscreenWidth * 0.2,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Text(
                            'Sound',
                            style: TextStyle(
                              fontFamily: 'RealtimeGamer',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff944e08),
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AlignPositioned(
                      alignment: Alignment.topLeft,
                      dx: fullscreenWidth * 0.0,
                      dy: fullscreenHeight * 0.28,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/ui/share.png',
                            height: fullscreenHeight * 0.07,
                            width: fullscreenWidth * 0.2,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Text(
                            'Share',
                            style: TextStyle(
                              fontFamily: 'RealtimeGamer',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff944e08),
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AlignPositioned(
                      alignment: Alignment.topLeft,
                      dx: fullscreenWidth * 0.0,
                      dy: fullscreenHeight * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/ui/feedback.png',
                            height: fullscreenHeight * 0.07,
                            width: fullscreenWidth * 0.2,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Text(
                            'Feedback',
                            style: TextStyle(
                              fontFamily: 'RealtimeGamer',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff944e08),
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Image.asset('assets/ui/grass.png'),
          ],
        ),
      ),
    );
  }
}
