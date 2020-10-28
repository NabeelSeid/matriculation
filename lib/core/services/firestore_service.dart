import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore firestore;

  FirestoreService() {
    firestore = FirebaseFirestore.instance;
  }

  Future<Map<String, dynamic>> fetchSearchRefs() async {
    var docs = await firestore.collection('search-refs').get();
    return docs.docs[0].data();
  }
}
