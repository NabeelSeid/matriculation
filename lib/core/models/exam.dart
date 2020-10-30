import 'package:matric/core/models/choice.dart';

class ExamModel {
  String section;
  String direction;
  String question;
  ChoiceModel choices;
  String table;
  String image;
  String paragraph;
  bool chapterized;
  int chapter;
  int grade;
  String answer; //TODO change answer type to Choices enum
  int number;
  String explanation;

  ExamModel({
    this.section,
    this.direction,
    this.question,
    this.choices,
    this.table,
    this.image,
    this.paragraph,
    this.chapterized,
    this.chapter,
    this.grade,
    this.answer,
    this.number,
    this.explanation,
  });

  factory ExamModel.fromJson(Map<String, dynamic> examJson) => ExamModel(
      section: examJson['section'],
      direction: examJson['direction'],
      question: examJson['question'],
      choices: ChoiceModel.fromJson(examJson['choices']),
      table: examJson['table'],
      image: examJson['image'],
      paragraph: examJson['paragraph'],
      chapterized: examJson['chapterized'],
      chapter: examJson['chapter'],
      grade: examJson['grade'],
      answer: examJson['answer'],
      number: examJson['number'],
      explanation: examJson['explanation']);
}
