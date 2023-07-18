import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class JobViewers extends GetxController {
  final db = FirebaseFirestore.instance;
  Future getJobApplication() async {
    return await db.collection("applications").get();
    // .then(
    //   (querySnapshot) {
    //     print("Successfully completed");
    //     for (var docSnapshot in querySnapshot.docs) {
    //       print('${docSnapshot.id} => ${docSnapshot.data()}');
    //     }
    //   },
    //   onError: (e) => print("Error completing: $e"),
    // );
  }
}
