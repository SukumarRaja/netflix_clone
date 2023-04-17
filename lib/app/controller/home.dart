import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());
  final fireStore = FirebaseFirestore.instance;

  getPopularMovies() async {
    QuerySnapshot snapshot = await fireStore.collection('collectionPath').get();
    return snapshot.docs;
  }
}
