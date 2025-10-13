import 'package:cloud_firestore/cloud_firestore.dart';

import 'data_base_services.dart';

class FireStoreServices implements DataBaseServices {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await fireStore.collection(path).add(data);
  }
}
