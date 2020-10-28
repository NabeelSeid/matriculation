import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore firestore;

  FirestoreService() {
    firestore = FirebaseFirestore.instance;
  }

  Future<List<Map>> fetchSearchRefs() async {
    var docs = await firestore.collection('search-refs').get();
    return docs.docs.map((e) => e.data()).toList();
  }
}
