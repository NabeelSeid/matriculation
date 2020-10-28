import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore firestore;

  FirestoreService() {
    firestore = FirebaseFirestore.instance;
  }
}
