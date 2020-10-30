import 'package:matric/core/data_models/question.dart';

class ExamModel {
  int count;
  String subject;
  int year;
  bool chapterized;
  List<String> pages;
  List<QuestionModel> questions;

  ExamModel({
    this.count,
    this.subject,
    this.year,
    this.chapterized,
    this.pages,
    this.questions,
  });

  factory ExamModel.fromJson(Map<String, dynamic> examJson) => ExamModel(
        count: examJson['count'],
        subject: examJson['subject'],
        year: examJson['year'],
        chapterized: examJson['chapterized'],
        pages: examJson['pages'] != null
            // There is pages list providied
            ? (examJson['pages'] as List).map((page) => page as String).toList()
            // There is no pages list generate page number from total count of questions
            : List.generate((examJson['count'] as int),
                (index) => (index + 1) as String).toList(),
        questions: (examJson['questions'] as List)
            .map((question) => QuestionModel.fromJson(question))
            .toList(),
      );
}
