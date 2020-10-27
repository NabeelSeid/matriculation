import 'package:flutter/foundation.dart';

enum ViewState { Idle, Busy }

class DownloadModel extends ChangeNotifier {
  ViewState _state = ViewState.Busy;

  ViewState get state => _state;

  DownloadModel() {
    loadExams();
  }

  void loadExams() {
    Future.delayed(Duration(seconds: 2), () {
      _state = ViewState.Idle;
      notifyListeners();
    });
  }
}
