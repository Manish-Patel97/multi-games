import 'dart:async';

import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceFinishScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/find3DifferencelevelScreen.dart';
import 'package:maze_games/screens/settingScreen.dart';
import 'package:maze_games/widgets/mazeroutinglevels.dart';
import 'package:photo_view/photo_view.dart';
import 'package:drawing_animation/drawing_animation.dart';

class DifferenceLevelFiveScreen extends StatefulWidget {
  static bool showHint = false;
  int index = 0;
  DifferenceLevelFiveScreen({super.key, required this.index});

  @override
  State<DifferenceLevelFiveScreen> createState() =>
      _DifferenceLevelFiveScreenState();
}

const double minScale = 1.0;
const double defScale = 0.1;
const double maxScale = 2.0;

class _DifferenceLevelFiveScreenState extends State<DifferenceLevelFiveScreen> {
  var wrongPoints = const Offset(0.0, 0.0);
  bool drawCrossMark = false;
  bool outSideClick = false;
  bool correct = false;
  double fixedPoint = 0.25;
  late PhotoViewControllerBase controller;
  late PhotoViewScaleStateController scaleStateController;
  int calls = 0;
  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;
  bool finish = false;
  @override
  void initState() {
    super.initState();

    controller = PhotoViewController(initialScale: defScale)
      ..outputStateStream.listen(onController);

    scaleStateController = PhotoViewScaleStateController()
      ..outputScaleStateStream.listen(onScaleState);
  }

  @override
  void dispose() {
    super.dispose();
  }

  //  Others function ----------------------------------------------------------

  _onTapUp(TapUpDetails details) {
    setState(() {
      wrongPoints = details.localPosition;
      drawCrossMark = true;
      outSideClick = true;

      Timer(const Duration(milliseconds: 600), () {
        setState(() {
          drawCrossMark = false;
          outSideClick = false;
        });
      });
    });
  }

  checkStatus() {
    if (flag1 == true && flag2 == true && flag3 == true) {
      setState(() {
        finish = true;
      });

      Timer(const Duration(seconds: 2), () {
        finishpage(context, widget.index);
      });
    }
  }

  void onController(PhotoViewControllerValue value) {
    setState(() {
      calls += 1;
    });
  }

  void onScaleState(PhotoViewScaleState scaleState) {
    if (kDebugMode) {
      print(scaleState);
    }
  }

  @override
  Widget build(BuildContext context) {
    var fullscreenWidth = MediaQuery.of(context).size.width;
    var fullscreenHeight = MediaQuery.of(context).size.height;
    double textsize = fullscreenWidth > 600 ? 35 : 25;
    double imageposition = fullscreenWidth > 600 ? 200 : 100;

    var endPoint1 = fullscreenWidth * 0.43;
    var endPoint2 = fullscreenHeight * 0.12;
    var endPoint3 = fullscreenWidth * 0.43;
    var endPoint4 = fullscreenHeight * 0.35;
    var endPoint5 = fullscreenWidth * 0.27;
    var endPoint6 = fullscreenHeight * 0.09;
    var endPoint7 = fullscreenWidth * 0.27;
    var endPoint8 = fullscreenHeight * 0.32;
    var endPoint9 = fullscreenWidth * 0.13;
    var endPoint10 = fullscreenHeight * 0.08;
    var endPoint11 = fullscreenWidth * 0.13;
    var endPoint12 = fullscreenHeight * 0.31;

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
                        builder: (context) =>
                            const Find3DifferenceLevelScreen()));
              },
              child: Image.asset('assets/ui/home.png')),
        ),
        title: Text(
          'Level ${widget.index}',
          style: const TextStyle(
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
        width: fullscreenWidth,
        height: fullscreenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff5f5f5), Color(0xffe2e2e2)]),
        ),
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Find 3 differences',
                  style: TextStyle(
                      fontSize: textsize, fontFamily: 'RealtimeGamer'),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Positioned(
            top: imageposition,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/difference/bg5.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  AlignPositioned(
                    alignment: Alignment.topLeft,
                    dx: fullscreenWidth * 0.215,
                    dy: fullscreenHeight * 0.075,
                    child: Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width * 0.535,
                      child: ClipRect(
                        child: PhotoView.customChild(
                          controller: controller,
                          scaleStateController: scaleStateController,
                          enableRotation: false,
                          initialScale: minScale,
                          minScale: minScale,
                          maxScale: maxScale,
                          child: GestureDetector(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.45,
                              width: MediaQuery.of(context).size.width * 0.535,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/difference/5.jpg'),
                                      fit: BoxFit.contain),
                                  color: Colors.white),
                              child: Stack(
                                children: [
                                  AlignPositioned(
                                    alignment: Alignment.topLeft,
                                    dx: fullscreenWidth * 0.43,
                                    dy: fullscreenHeight * 0.12,
                                    touch: Touch.middle,
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag1 = true;
                                        });
                                        checkStatus();
                                      },
                                    ),
                                  ),
                                  AlignPositioned(
                                    alignment: Alignment.topLeft,
                                    dx: fullscreenWidth * 0.43,
                                    dy: fullscreenHeight * 0.35,
                                    touch: Touch.middle,
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag1 = true;
                                        });
                                        checkStatus();
                                      },
                                    ),
                                  ),
                                  if (flag1 == true)
                                    AlignPositioned(
                                      alignment: Alignment.topLeft,
                                      child: AnimatedDrawing.paths(
                                        [
                                          (Path()
                                            ..addOval(
                                              Rect.fromCircle(
                                                center: Offset(
                                                    endPoint1, endPoint2),
                                                radius: 15.0,
                                              ),
                                            )),
                                        ],
                                        paints: [
                                          Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4.0
                                            ..color = Colors.red
                                        ],
                                        run: flag1,
                                        duration: const Duration(seconds: 1),
                                        scaleToViewport: false,
                                      ),
                                    ),
                                  if (flag1 == true)
                                    AlignPositioned(
                                      alignment: Alignment.topLeft,
                                      child: AnimatedDrawing.paths(
                                        [
                                          (Path()
                                            ..addOval(
                                              Rect.fromCircle(
                                                center: Offset(
                                                    endPoint3, endPoint4),
                                                radius: 15.0,
                                              ),
                                            )),
                                        ],
                                        paints: [
                                          Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4.0
                                            ..color = Colors.red
                                        ],
                                        run: flag1,
                                        duration: const Duration(seconds: 1),
                                        scaleToViewport: false,
                                      ),
                                    ),
                                  AlignPositioned(
                                    alignment: Alignment.topLeft,
                                    dx: fullscreenWidth * 0.27,
                                    dy: fullscreenHeight * 0.09,
                                    touch: Touch.middle,
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag2 = true;
                                        });
                                        checkStatus();
                                      },
                                    ),
                                  ),
                                  AlignPositioned(
                                    alignment: Alignment.topLeft,
                                    dx: fullscreenWidth * 0.27,
                                    dy: fullscreenHeight * 0.32,
                                    touch: Touch.middle,
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag2 = true;
                                        });
                                        checkStatus();
                                      },
                                    ),
                                  ),
                                  if (flag2 == true)
                                    AlignPositioned(
                                      alignment: Alignment.topLeft,
                                      child: AnimatedDrawing.paths(
                                        [
                                          (Path()
                                            ..addOval(
                                              Rect.fromCircle(
                                                center: Offset(
                                                    endPoint5, endPoint6),
                                                radius: 15.0,
                                              ),
                                            )),
                                        ],
                                        paints: [
                                          Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4.0
                                            ..color = Colors.red
                                        ],
                                        run: flag2,
                                        duration: const Duration(seconds: 1),
                                        scaleToViewport: false,
                                      ),
                                    ),
                                  if (flag2 == true)
                                    AlignPositioned(
                                      alignment: Alignment.topLeft,
                                      child: AnimatedDrawing.paths(
                                        [
                                          (Path()
                                            ..addOval(
                                              Rect.fromCircle(
                                                center: Offset(
                                                    endPoint7, endPoint8),
                                                radius: 15.0,
                                              ),
                                            )),
                                        ],
                                        paints: [
                                          Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4.0
                                            ..color = Colors.red
                                        ],
                                        run: flag2,
                                        duration: const Duration(seconds: 1),
                                        scaleToViewport: false,
                                      ),
                                    ),
                                  AlignPositioned(
                                    alignment: Alignment.topLeft,
                                    dx: fullscreenWidth * 0.13,
                                    dy: fullscreenHeight * 0.08,
                                    touch: Touch.middle,
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag3 = true;
                                        });
                                        checkStatus();
                                      },
                                    ),
                                  ),
                                  AlignPositioned(
                                    alignment: Alignment.topLeft,
                                    dx: fullscreenWidth * 0.13,
                                    dy: fullscreenHeight * 0.31,
                                    touch: Touch.middle,
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          flag3 = true;
                                        });
                                        checkStatus();
                                      },
                                    ),
                                  ),
                                  if (flag3 == true)
                                    AlignPositioned(
                                      alignment: Alignment.topLeft,
                                      child: AnimatedDrawing.paths(
                                        [
                                          (Path()
                                            ..addOval(
                                              Rect.fromCircle(
                                                center: Offset(
                                                    endPoint9, endPoint10),
                                                radius: 15.0,
                                              ),
                                            )),
                                        ],
                                        paints: [
                                          Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4.0
                                            ..color = Colors.red
                                        ],
                                        run: flag3,
                                        duration: const Duration(seconds: 1),
                                        scaleToViewport: false,
                                      ),
                                    ),
                                  if (flag3 == true)
                                    AlignPositioned(
                                      alignment: Alignment.topLeft,
                                      child: AnimatedDrawing.paths(
                                        [
                                          (Path()
                                            ..addOval(
                                              Rect.fromCircle(
                                                center: Offset(
                                                    endPoint11, endPoint12),
                                                radius: 15.0,
                                              ),
                                            )),
                                        ],
                                        paints: [
                                          Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4.0
                                            ..color = Colors.red
                                        ],
                                        run: flag3,
                                        duration: const Duration(seconds: 1),
                                        scaleToViewport: false,
                                      ),
                                    ),
                                  drawCrossMark && outSideClick
                                      ? AlignPositioned(
                                          alignment: Alignment.topLeft,
                                          dx: wrongPoints.dx,
                                          dy: wrongPoints.dy,
                                          touch: Touch.middle,
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.red,
                                            size: 50,
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            onTapDown: (details) {
                              setState(() {
                                outSideClick = true;
                              });
                            },
                            onTapUp: (TapUpDetails details) =>
                                _onTapUp(details),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (finish == true)
                    AlignPositioned(
                      alignment: Alignment.topLeft,
                      dx: fullscreenWidth * 0.38,
                      dy: fullscreenHeight * 0.22,
                      child: Image.asset(
                        'assets/ui/right.png',
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child: Container(
                    height: fullscreenHeight * 0.1,
                    width: fullscreenWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          spreadRadius: 1,
                          offset: Offset(
                            1,
                            2,
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DifferenceLevelFiveScreen(
                                          index: widget.index,
                                        )));
                          },
                          child: Image.asset(
                            'assets/ui/retry.png',
                            height: fullscreenWidth > 600 ? 100 : 60,
                            width: fullscreenWidth > 600 ? 100 : 60,
                          ),
                        ),
                        SizedBox(
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/ui/hint.png',
                              height: fullscreenWidth > 600 ? 100 : 60,
                              width: fullscreenWidth > 600 ? 100 : 60,
                            ),
                            onTap: () {
                              hints();
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            finishpage(context, widget.index);
                          },
                          child: Image.asset(
                            'assets/ui/skip.png',
                            height: fullscreenWidth > 600 ? 100 : 55,
                            width: fullscreenWidth > 600 ? 100 : 55,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  // //Hints Dialog -------------------------------------------------------------
  hints() {
    var fullscreenWidth = MediaQuery.of(context).size.width;
    var fullscreenheight = MediaQuery.of(context).size.height;

    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.white.withOpacity(0.9),
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ui/settingboard.png'),
                    fit: BoxFit.contain),
              ),
              width: fullscreenWidth,
              height: fullscreenWidth > 600
                  ? fullscreenheight * 0.5
                  : fullscreenheight * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ui/hint.png',
                        height: fullscreenWidth > 600 ? 100 : 60,
                        width: fullscreenWidth > 600 ? 100 : 60,
                      ),
                      Text(
                        "Zoom and look at \n\nbrush,colors & tounge.",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: fullscreenWidth > 600 ? 40 : 25,
                          fontFamily: 'BandarBold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      'assets/ui/wrong.png',
                      height: fullscreenWidth > 600 ? 100 : 50,
                      width: fullscreenWidth > 600 ? 100 : 50,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
