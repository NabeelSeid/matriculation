import 'package:flutter/foundation.dart';
import 'package:matric/core/services/connectivity_service.dart';
import 'package:matric/core/services/navigation_service.dart';
import 'package:matric/locator.dart';

enum ViewState { Idle, Busy }

class DownloadModel extends ChangeNotifier {
  ViewState _state = ViewState.Busy;
  String _message = 'Loading Exams';

  ViewState get state => _state;
  String get message => _message;

  void loadExams() async {
    if (await locator<ConnectivityService>().connected()) {
      _state = ViewState.Idle;
      notifyListeners();
    } else {
      locator<NavigationService>().goBack();
    }
  }
}
