import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key key, this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            ...showMessage(),
          ],
        ),
      ),
    );
  }

  List<Widget> showMessage() =>
      message != null ? [SizedBox(height: 20.0), Text(message)] : [];
}
