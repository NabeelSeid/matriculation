import 'package:matric/core/data_models/question.dart';

class ExamModel {
  int count;
  String subject;
  int year;
  bool chapterized;
  List<QuestionModel> questions;

  ExamModel({
    this.count,
    this.subject,
    this.year,
    this.chapterized,
    this.questions,
  });

  factory ExamModel.fromJson(Map<String, dynamic> examJson) => ExamModel(
        count: examJson['count'],
        subject: examJson['subject'],
        year: examJson['year'],
        chapterized: examJson['chapterized'],
        questions: (examJson['questions'] as List)
            .map((question) => QuestionModel.fromJson(question))
            .toList(),
      );
}
