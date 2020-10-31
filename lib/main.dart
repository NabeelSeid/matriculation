import 'package:flutter/material.dart';
import 'package:matric/core/services/navigation_service.dart';
import 'package:matric/core/view_models/dark_theme_model.dart';
import 'package:matric/locator.dart';
import 'package:matric/gen_router.dart';
import 'package:matric/routes.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:matric/ui/shared/theme_style.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeModel _darkThemeModel = locator<DarkThemeModel>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _darkThemeModel,
      child: Consumer<DarkThemeModel>(
        builder: (context, model, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeStyle.themeData(model.darkTheme, context),
            navigatorKey: locator<NavigationService>().navigatorKey,
            initialRoute: Routes.Home,
            onGenerateRoute: GenRouter.generateRoute,
          );
        },
      ),
    );
  }
}
