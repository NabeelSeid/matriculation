import 'package:get_it/get_it.dart';
import 'package:matric/core/services/connectivity_service.dart';
import 'package:matric/core/services/firestore_service.dart';
import 'package:matric/core/view_models/dark_theme_model.dart';
import 'package:matric/core/view_models/download_model.dart';
import 'package:matric/core/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Models
  locator.registerLazySingleton(() => DownloadModel());
  locator.registerLazySingleton(() => DarkThemeModel());

  // Services
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ConnectivityService());
  locator.registerLazySingleton(() => FirestoreService());
}
