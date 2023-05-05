import 'package:flutter/material.dart';
import 'package:maze_games/screens/gameSelectionScreen.dart';
import 'package:maze_games/screens/settingScreen.dart';
import 'package:maze_games/widgets/mazeroutinglevels.dart';

class Find3DifferenceLevelScreen extends StatefulWidget {
  const Find3DifferenceLevelScreen({
    super.key,
  });

  @override
  State<Find3DifferenceLevelScreen> createState() =>
      _Find3DifferenceLevelScreenState();
}

class _Find3DifferenceLevelScreenState
    extends State<Find3DifferenceLevelScreen> {
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
                          builder: (context) => const GameSelectionScreen()));
                },
                child: Image.asset('assets/ui/home.png')),
          ),
          title: const Text(
            'Find Difference',
            style: TextStyle(
              fontFamily: 'RealtimeGamer',
              fontWeight: FontWeight.bold,
              color: Color(0xffc2dd8e),
              fontSize: 30,
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
              Color(0xffc2dd8e),
              Color(0xfffcb364),
              Color(0xffb0804f),
              Color(0xff682402),
            ],
          )),
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 9.0, mainAxisSpacing: 9.0),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: GestureDetector(
                  onTap: () {
                    find3differenceroutinglevels(context, index + 1);
                  },
                  child: Container(
                    height: fullscreenHeight * 0.1,
                    width: fullscreenWidth * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/ui/blank.png'),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          fontFamily: 'RealtimeGamer',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff692e10),
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
