import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/colors.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/widgets/bar_button.dart';

class SubjectButton extends StatelessWidget {
  const SubjectButton({
    Key key,
    @required this.subject,
    this.year: '',
    this.examLeft: 0,
    this.onTap,
  }) : super(key: key);

  final String subject;
  final String year;
  final int examLeft;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return BarButton(
      elevation: 4,
      borderRadius: boxy,
      onTap: null,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 90, minWidth: 110),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: boxy,
            gradient: LinearGradient(
              colors: [Colors.white, Colors.deepPurpleAccent],
              begin: Alignment.bottomLeft,
            ),
          ),
          child: Material(
            borderRadius: boxy,
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: boxy,
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Text(year, style: overline(context)),
                        ),
                        SizedBox(height: 5.0),
                        Text(subject, style: title),
                      ],
                    ),
                    examToDownload(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget examToDownload(context) => examLeft > 0
      ? Container(
          margin: const EdgeInsets.only(bottom: 5.0),
          child: Material(
            type: MaterialType.card,
            elevation: 3,
            borderRadius: rounded,
            color: canvasBG(context, opacity: 0.8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: examLeft > 0
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.cloud_download,
                          color: accent(context),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('$examLeft Exams'),
                      ],
                    )
                  : Icon(Icons.check, color: Colors.green),
            ),
          ),
        )
      : Container();
}
