import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:matric/core/data_models/question.dart';
import 'package:matric/ui/widgets/choice_card.dart';
import 'package:matric/ui/widgets/title_card.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key key, this.questionModel}) : super(key: key);

  final QuestionModel questionModel;

  Widget _buildTitledCard(String title, String content) => content != null
      ? TitledCard(
          title: title,
          child: Html(
            data: content,
            style: {'body': Style(margin: EdgeInsets.all(0.0))},
          ),
        )
      : null;

  List<Widget> _buildPageContent() {
    List<Widget> children = [];

    Widget section = _buildTitledCard('Section', questionModel.section);
    Widget direction = _buildTitledCard('Direction', questionModel.direction);
    Widget table = _buildTitledCard('Table', questionModel.table);
    Widget paragraph = _buildTitledCard('Paragraph', questionModel.paragraph);
    Widget image = _buildTitledCard('Image', questionModel.image);
    Widget question = _buildTitledCard('Question', questionModel.question);
    Widget choice = questionModel.choices != null
        ? ChoiceCard(
            answer: questionModel.answer,
            choiceModel: questionModel.choices,
          )
        : null;

    if (section != null) children.add(section);
    if (direction != null) children.add(direction);
    if (table != null) children.add(table);
    if (paragraph != null) children.add(paragraph);
    if (image != null) children.add(image);
    if (question != null) children.add(question);
    if (choice != null) children.add(choice);

    return children;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildPageContent(),
    );
  }
}
