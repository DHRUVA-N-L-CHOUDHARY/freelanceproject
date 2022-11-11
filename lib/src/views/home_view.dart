import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/views/dashboard_view.dart';
import 'package:freelanceproject/src/views/login_view.dart';
import 'package:freelanceproject/src/views/registration_view.dart';
import 'package:get/get.dart';

import '../controllers/auth_client_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/login_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DioAuthClient dioClient = DioAuthClient();
  Future<Widget> _login() async => await dioClient.login().then((value) async {
    if(value) {
      return const DashboardPageView();
    } else {
      if(FirebaseAuth.instance.currentUser != null) {
        return RegistrationView();
      } else {
        return LoginView();
      }
    }
  });
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
        future: _login(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(body: snapshot.data ?? const CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            final error = snapshot.error;
            return Center(
              child: Text(
                "Error: $error",
              ),
            );
          } else {
            return const Scaffold(
              body: CircularProgressIndicator(),
            );
          }
        });
  }
}
