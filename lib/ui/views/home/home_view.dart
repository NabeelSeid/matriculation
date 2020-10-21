import 'package:flutter/material.dart';
import 'package:matric/ui/shared/colors.dart';
import 'package:matric/ui/views/home/download_button.dart';
import 'package:matric/ui/views/home/exam_expansion_tile.dart';
import 'package:matric/ui/views/home/home_page.dart';
import 'package:matric/ui/views/home/subject_page.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Stack(
            children: [
              SubjectPage(),
              // HomePage(children: [
              //   ExamExpansionTile(
              //     title: Text('Exams'),
              //     children: [
              //       SubjectButton(
              //         subject: 'Chemistry',
              //         year: '2008',
              //       ),
              //       SubjectButton(
              //         subject: 'Chemistry',
              //         year: '2008',
              //       ),
              //       SubjectButton(
              //         subject: 'Chemistry',
              //         year: '2008',
              //       ),
              //       SubjectButton(
              //         subject: 'Chemistry',
              //         year: '2008',
              //       )
              //     ],
              //   ),
              //   ExamExpansionTile(
              //       title: Text('Exams'),
              //       children: [
              //         SubjectButton(
              //           subject: 'Chemistry',
              //           year: '2008',
              //         ),
              //         SubjectButton(
              //           subject: 'Chemistry',
              //           year: '2008',
              //         ),
              //         SubjectButton(
              //           subject: 'Chemistry',
              //           year: '2008',
              //         ),
              //         SubjectButton(
              //           subject: 'Chemistry',
              //           year: '2008',
              //         )
              //       ],
              //     )
              // ]),

              DownloadBarButton(
                onTab: () {},
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: textColor(context, opacity: 0.75),
        elevation: 10,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), title: Text('Subject')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text('Year')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings'))
        ],
      ),
    );
  }
}
