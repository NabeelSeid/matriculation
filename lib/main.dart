import 'package:flutter/material.dart';
import 'package:matric/core/services/navigation_service.dart';
import 'package:matric/locator.dart';
import 'package:matric/gen_router.dart';
import 'package:matric/routes.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      navigatorKey: locator<NavigationService>().navigatorKey,
      initialRoute: Routes.Demo,
      onGenerateRoute: GenRouter.generateRoute,
    );
  }
}
