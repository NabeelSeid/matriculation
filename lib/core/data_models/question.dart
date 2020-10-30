import 'package:matric/core/data_models/choice.dart';

class QuestionModel {
  String section;
  String direction;
  String question;
  ChoiceModel choices;
  String table;
  String image;
  String paragraph;
  int chapter;
  int grade;
  String answer; //TODO change answer type to Choices enum
  int number;
  String explanation;

  QuestionModel({
    this.section,
    this.direction,
    this.question,
    this.choices,
    this.table,
    this.image,
    this.paragraph,
    this.chapter,
    this.grade,
    this.answer,
    this.number,
    this.explanation,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> questionJson) =>
      QuestionModel(
          section: questionJson['section'],
          direction: questionJson['direction'],
          question: questionJson['question'],
          choices: questionJson['choices'] != null
              ? ChoiceModel.fromJson(questionJson['choices'])
              : null,
          table: questionJson['table'],
          image: questionJson['image'],
          paragraph: questionJson['paragraph'],
          chapter: questionJson['chapter'],
          grade: questionJson['grade'],
          answer: questionJson['answer'],
          number: questionJson['number'],
          explanation: questionJson['explanation']);
}
