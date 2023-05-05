import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:align_positioned/align_positioned.dart';
import 'package:maze_games/widgets/mazeroutinglevels.dart';

Timer? timer1;
Timer? timer2;
Timer? timer3;

ValueNotifier<bool> visibility1 = ValueNotifier<bool>(false);
ValueNotifier<bool> visibility2 = ValueNotifier<bool>(false);
ValueNotifier<bool> visibility3 = ValueNotifier<bool>(false);
void timing() {
  timer1 = Timer.periodic(const Duration(seconds: 2), (_) {
    visibility1.value = true;
    timer1?.cancel();
  });
  timer2 = Timer.periodic(const Duration(seconds: 3), (_) {
    visibility2.value = true;
    timer2?.cancel();
  });
  timer3 = Timer.periodic(const Duration(seconds: 4), (_) {
    visibility3.value = true;
    timer3?.cancel();
  });
}

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
                        image: AssetImage('assets/ui/settingboard.png'),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              AlignPositioned(
                alignment: Alignment.topLeft,
                dx: fullscreenWidth * 0.22,
                dy: fullscreenheight * 0.38,
                child: ValueListenableBuilder<bool>(
                  builder: (BuildContext context, bool value, Widget? child) {
                    return Image.asset(
                      'assets/ui/star.png',
                      height: fullscreenheight * 0.1,
                      width: fullscreenWidth * 0.15,
                    );
                  },
                  valueListenable: visibility1,
                ),
              ),
              AlignPositioned(
                alignment: Alignment.topLeft,
                dx: fullscreenWidth * 0.4,
                dy: fullscreenheight * 0.38,
                child: ValueListenableBuilder<bool>(
                  builder: (BuildContext context, bool value, Widget? child) {
                    return Image.asset(
                      'assets/ui/star.png',
                      height: fullscreenheight * 0.1,
                      width: fullscreenWidth * 0.2,
                    );
                  },
                  valueListenable: visibility2,
                ),
              ),
              AlignPositioned(
                alignment: Alignment.topLeft,
                dx: fullscreenWidth * 0.63,
                dy: fullscreenheight * 0.38,
                child: ValueListenableBuilder<bool>(
                  builder: (BuildContext context, bool value, Widget? child) {
                    return Image.asset(
                      'assets/ui/star.png',
                      height: fullscreenheight * 0.1,
                      width: fullscreenWidth * 0.15,
                    );
                  },
                  valueListenable: visibility3,
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
                  dy: fullscreenheight * 0.45,
                  child: GestureDetector(
                    onTap: () {
                      log("ontap");
                      find3differenceroutinglevels(context, level + 1);
                    },
                    child: Image.asset(
                      'assets/ui/continue.png',
                      height: fullscreenheight * 0.2,
                      width: fullscreenWidth * 0.5,
                    ),
                  )),
              AlignPositioned(
                  alignment: Alignment.topLeft,
                  dx: fullscreenWidth * 0.25,
                  dy: fullscreenheight * 0.55,
                  child: GestureDetector(
                    onTap: () {
                      log("ontap11111");
                      Navigator.pop(context);
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
