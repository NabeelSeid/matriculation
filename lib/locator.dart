import 'package:get_it/get_it.dart';
import 'package:matric/core/view_models/download_model.dart';
import 'package:matric/core/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Models
  locator.registerLazySingleton(() => DownloadModel());

  // Services
  locator.registerLazySingleton(() => NavigationService());
}
