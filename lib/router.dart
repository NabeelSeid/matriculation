import 'package:flutter/material.dart';
import 'package:matric/demo.dart';
import 'package:matric/routes.dart';
import 'package:matric/ui/views/download/download_view.dart';
import 'package:matric/ui/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // for development purpose
    case Routes.Demo:
      return MaterialPageRoute(builder: (_) => Demo());
      break;
    case Routes.Home:
      return MaterialPageRoute(builder: (_) => HomeView());
      break;
    case Routes.Download:
      return MaterialPageRoute(builder: (_) => DownloadView());
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
