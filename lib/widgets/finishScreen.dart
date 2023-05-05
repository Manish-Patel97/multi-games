import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:align_positioned/align_positioned.dart';
import 'package:maze_games/widgets/mazeroutinglevels.dart';

Timer? timer1;
Timer? timer2;
Timer? timer3;
bool star1 = false;
bool star2 = false;
bool star3 = false;
// void timing() {
//   timer1 = Timer.periodic(
//       const Duration(seconds: 2),
//       (_) => setState(() {
//             question1 = true;
//             timer1?.cancel();
//           }));

//   timer2 = Timer.periodic(
//       const Duration(seconds: 5),
//       (_) => setState(() {
//             question1 = false;
//             question2 = true;
//             timer2?.cancel();
//           }));
//   timer3 = Timer.periodic(
//       const Duration(seconds: 8),
//       (_) => setState(() {
//             question2 = false;
//             question3 = true;
//             timer3?.cancel();
//           }));
//   timer4 = Timer.periodic(
//       const Duration(seconds: 12),
//       (_) => setState(() {
//             question3 = false;
//             question4 = true;
//             timer4?.cancel();
//           }));
// }

finishpage(BuildContext context, int level) {
  log(level.toString());
  var fullscreenWidth = MediaQuery.of(context).size.width;
  var fullscreenheight = MediaQuery.of(context).size.height;
  showGeneralDialog(
      context: context,
      //barrierDismissible: false,
      barrierColor: Colors.black45.withOpacity(0.5),
      //barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      //transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return SizedBox(
          height: fullscreenheight,
          width: fullscreenWidth,
          child: Stack(
            children: [
              AlignPositioned(
                alignment: Alignment.center,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ui/leaderboard.png'),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              AlignPositioned(
                  alignment: Alignment.topLeft,
                  dx: fullscreenWidth * 0.32,
                  dy: fullscreenheight * 0.32,
                  child: const Text(
                    'Complete',
                    style: TextStyle(
                      fontFamily: 'RealtimeGamer',
                      fontWeight: FontWeight.bold,
                      color: Color(0xffc2dd8e),
                      fontSize: 30,
                    ),
                  )),
              AlignPositioned(
                  alignment: Alignment.topLeft,
                  dx: fullscreenWidth * 0.25,
                  dy: fullscreenheight * 0.35,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/ui/continue.png',
                      height: fullscreenheight * 0.2,
                      width: fullscreenWidth * 0.5,
                    ),
                  )),
              AlignPositioned(
                  alignment: Alignment.topLeft,
                  dx: fullscreenWidth * 0.25,
                  dy: fullscreenheight * 0.45,
                  child: GestureDetector(
                    onTap: () {
                      mazeroutinglevels(context, level + 1);
                    },
                    child: Image.asset(
                      'assets/ui/exit.png',
                      height: fullscreenheight * 0.2,
                      width: fullscreenWidth * 0.5,
                    ),
                  )),
            ],
          ),
        );
      });
}
