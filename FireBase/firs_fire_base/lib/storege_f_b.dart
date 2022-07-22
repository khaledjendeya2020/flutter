import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreHelper {
  static FirestoreHelper firestoreHelper = FirestoreHelper();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  addNewUser() async {
    Map<String, dynamic> data = {
      'name': 'khaled',
      'isMale': true,
      'prother': ['khaled', 'osama', 'abdalla']
    };
    DocumentReference<Map<String, dynamic>> doc =
        await firestore.collection('user').add(data);
    log(doc.toString());
  }

  getAllMap() async {
    QuerySnapshot<Map<String, dynamic>> data =
        await firestore.collection('User').get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> ddd = data.docs;
    List<Map<String, dynamic>> dataList = ddd.map((e) => e.data()).toList();
    print(dataList.toString());
    addNewUser();
  }
}
