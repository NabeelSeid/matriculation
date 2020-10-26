import 'package:flutter/material.dart';
import 'package:matric/demo.dart';
import 'package:matric/routes.dart';
import 'package:matric/ui/views/download/download_view.dart';
import 'package:matric/ui/views/exam/exam_view.dart';
import 'package:matric/ui/views/exam_practice/exam_practice_view.dart';
import 'package:matric/ui/views/home/home_view.dart';
import 'package:matric/ui/views/subject/subject_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
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
        break;
      case Routes.Subject:
        return MaterialPageRoute(builder: (_) => SubjectView());
        break;
      case Routes.Exam:
        return MaterialPageRoute(builder: (_) => ExamView());
        break;
      case Routes.ExamPractice:
        return MaterialPageRoute(builder: (_) => ExamPracticeView());
        break;
      case Routes.ExamSim:
        //TODO exam simulation route
        return null;
      case Routes.ExamChap:
        //TODO exam chapterized route
        return null;
    }
  }
}
