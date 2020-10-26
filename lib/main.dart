import 'package:flutter/material.dart';
import 'package:matric/locator.dart';
import 'package:matric/router.dart';
import 'package:matric/routes.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              elevation: 0.0,
              color: ThemeData.light().canvasColor,
              iconTheme: ThemeData.light().iconTheme,
              textTheme: Theme.of(context).textTheme,
            ),
      ),
      // navigatorKey: locator<NavigationService>().navigatorKey,
      initialRoute: Routes.Home,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
