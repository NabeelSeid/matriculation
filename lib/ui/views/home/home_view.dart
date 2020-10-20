import 'package:flutter/material.dart';
import 'package:matric/ui/views/home/download_button.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Stack(
            children: [
              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, index) {
                  double topPadding = index == 0 ? 60 : 10;
                  return Padding(
                    padding: EdgeInsets.fromLTRB(10, topPadding, 10, 10),
                    child: SubjectButton(
                      subject: 'Chemistry',
                      year: '2008',
                    ),
                  );
                },
                itemCount: 10,
              ),
              DownloadBarButton(
                onTab: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
