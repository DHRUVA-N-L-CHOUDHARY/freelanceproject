// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../model/user_model.dart';
import 'network_client_controller.dart';

class UserController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<Usermodel> user = Usermodel().obs;
  //fetch all menu items
  void getUserData() async {
    try {
      isLoading(true);
    } finally {
      isLoading(false);
    }
  }
}