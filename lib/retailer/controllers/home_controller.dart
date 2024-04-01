import 'package:mealify_consumer/firebase_consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  @override
  void onInit(){
    getUsername();
    super.onInit();
  }

  var username='';
  getUsername() async {
    var n= await firestore.collection(consumersCollection).where('Id',isEqualTo:FirebaseAuth.instance.currentUser!.uid).get().then((value) {
      if (value.docs.isNotEmpty) {
        return value.docs.single['FullName'];
      }
    });

    username=n;

  }
}