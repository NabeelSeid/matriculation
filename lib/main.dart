import 'package:flutter/material.dart';
import 'package:matric/router.dart';
import 'package:matric/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
            color: ThemeData.light().canvasColor,
            iconTheme: ThemeData.light().iconTheme,
            textTheme: ThemeData.light().textTheme),
      ),
      initialRoute: Routes.Home,
      onGenerateRoute: generateRoute,
    );
  }
}
