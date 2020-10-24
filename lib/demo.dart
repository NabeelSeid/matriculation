import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/widgets/expandable_app_bar.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/page_view_with_indicator.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  PageController _bodyPageController;

  @override
  void initState() {
    super.initState();
    _bodyPageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('AppBar'),
      ),
      body: PageViewWithIndicator(
          bodyPageController: _bodyPageController,
          childern: [
            Center(child: Text('1')),
            Center(child: Text('2')),
            Center(child: Text('3')),
            Center(child: Text('4')),
            Center(child: Text('5')),
            Center(child: Text('6')),
            Center(child: Text('7')),
            Center(child: Text('8')),
            Center(child: Text('9')),
          ]),
    );
  }
}
