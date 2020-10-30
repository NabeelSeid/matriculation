import 'package:matric/core/choices_enum.dart';
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
  Choices answer;
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

  static Choices extractAnswer(String answer) {
    switch (answer) {
      case "A":
        return Choices.A;
        break;
      case "B":
        return Choices.B;
        break;
      case "C":
        return Choices.C;
        break;
      case "D":
        return Choices.D;
        break;
      default:
        return Choices.X;
    }
  }

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
          answer: extractAnswer(questionJson['answer']),
          number: questionJson['number'],
          explanation: questionJson['explanation']);
}
