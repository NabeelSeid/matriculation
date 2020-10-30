import 'package:flutter/foundation.dart';
import 'package:matric/core/models/search_ref.dart';
import 'package:matric/core/services/connectivity_service.dart';
import 'package:matric/core/services/firestore_service.dart';
import 'package:matric/locator.dart';

enum ViewState { Idle, Busy }

class DownloadModel extends ChangeNotifier {
  FirestoreService _firestoreService = locator<FirestoreService>();

  ViewState _state = ViewState.Busy;
  String _message = 'Loading Exams';
  List<SearchRefModel> _searchRefs;

  ViewState get state => _state;
  String get message => _message;
  List<SearchRefModel> get searchRefs => _searchRefs;

  void loadExams(Function showOnError) async {
    if (await locator<ConnectivityService>().connected()) {
      var result = await _firestoreService.fetchSearchRefs();
      _searchRefs = result.map((e) => SearchRefModel.fromJson(e)).toList();
      _searchRefs.removeWhere((element) => element.nationalExams.isEmpty);
      // TODO handle null searchRefs
      // TODO handle searchRefs already loaded
      _state = ViewState.Idle;
      notifyListeners();
    } else {
      showOnError();
    }
  }
}
