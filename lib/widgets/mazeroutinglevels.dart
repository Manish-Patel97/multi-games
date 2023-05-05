// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelEightScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelFiveScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelFourScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelNineScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelOneScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelSevenSceen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelSixScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelTenScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelThreeScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/differenceLevelTwoScreen.dart';
import 'package:maze_games/screens/easy/find3Difference/find3DifferencelevelScreen.dart';
import 'package:maze_games/screens/easy/levelFiveScreen.dart';
import 'package:maze_games/screens/easy/levelFourScreen.dart';
import 'package:maze_games/screens/easy/levelOneScreen.dart';
import 'package:maze_games/screens/easy/levelThreeScreen.dart';
import 'package:maze_games/screens/easy/levelTwoScreen.dart';
import 'package:maze_games/screens/easylevelSceen.dart';

mazeroutinglevels(BuildContext context, int level) {
  Navigator.of(context).pushReplacement(_levelRoute(level));
}

Route _levelRoute(level) {
  if (level == 1) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => LevelOneScreen(
        index: 1,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 2) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => LevelTwoScreen(
        index: 2,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 3) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => LevelThreeScreen(
        index: 3,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 4) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => LevelFourScreen(
        index: 4,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 5) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => LevelFiveScreen(
        index: 5,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  } else {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const EasyLevelScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

find3differenceroutinglevels(BuildContext context, int level) {
  Navigator.of(context).pushReplacement(_differencelevelRoute(level));
}

Route _differencelevelRoute(level) {
  if (level == 1) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLeveloneScreen(
        index: 1,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 2) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelTwoScreen(
        index: 2,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 3) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelThreeScreen(
        index: 3,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 4) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelFourScreen(
        index: 4,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 5) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelFiveScreen(
        index: 5,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 6) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelSixScreen(
        index: 6,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 7) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelSevenScreen(
        index: 7,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 8) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelEightScreen(
        index: 8,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 9) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelNineScreen(
        index: 9,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  if (level == 10) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          DifferenceLevelTenScreen(
        index: 10,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  } else {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Find3DifferenceLevelScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
