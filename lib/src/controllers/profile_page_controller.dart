import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/services/database.dart';
import 'package:get/get.dart';

class ProfilepageController extends GetxController {
  final userData =
      DatabaseMethods().getUserInfo().docs[0].data() as Map<String, dynamic>;
  List<Usermodel> user = [];
  FirebaseFirestore db = FirebaseFirestore.instance;

  //  ignore: non_constant_identifier_names
  Future<List<Usermodel>> getStarted_readData() async {
    // [START get_started_read_data]
    List<Usermodel> cookieList = [];
    await db.collection("products").get().then((querySnapshot) {
      querySnapshot.docs.forEach((product) {
        var _product = product.data();
        cookieList.add(Usermodel(
            email: userData["email"],
            userid: userData["userid"],
            sponsorid: userData["sponsorid"],
            sponsorname: userData["sponsorname"],
            firstname: userData["firstname"],
            lastname: userData["lastname"],
            phone: userData["phone"],
            investamount: userData["investamount"],
            profileid: userData["profileid"]));
      });
    });
    return cookieList;
    // [END get_started_read_data]
  }
}



// user.add(Usermodel(
// email: userData["email"], userid: userData["userid"], sponsorid: userData[""], sponsorname: userData[""],firstname: userData[""],lastname: userData[""], phone: userData[""], investamount: userData[""], profileid: userData[""]   
//   ))