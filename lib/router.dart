import 'package:flutter/material.dart';
import 'package:matric/demo.dart';
import 'package:matric/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // for development purpose
    case Routes.Demo:
      return MaterialPageRoute(builder: (_) => Demo());
    case Routes.Home:
      // MaterialPageRoute(builder: (_) => HomeView());
      return null;
    case Routes.Download:
      //TODO download route
      return null;
    case Routes.Subject:
      //TODO subject route
      return null;
    case Routes.Exam:
      //TODO exam route
      return null;
    case Routes.ExamPractice:
      //TODO exam practice route
      return null;
    case Routes.ExamSim:
      //TODO exam simulation route
      return null;
    case Routes.ExamChap:
      //TODO exam chapterized route
      return null;
  }
}
