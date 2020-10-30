import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:matric/core/data_models/exam.dart';
import 'package:matric/ui/widgets/choice_card.dart';
import 'package:matric/ui/widgets/title_card.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({Key key, this.examModel}) : super(key: key);

  final ExamModel examModel;

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

    Widget section = _buildTitledCard('Section', examModel.section);
    Widget direction = _buildTitledCard('Direction', examModel.direction);
    Widget table = _buildTitledCard('Table', examModel.table);
    Widget paragraph = _buildTitledCard('Paragraph', examModel.paragraph);
    Widget image = _buildTitledCard('Image', examModel.image);
    Widget question = _buildTitledCard('Question', examModel.question);
    Widget choice = ChoiceCard();

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
