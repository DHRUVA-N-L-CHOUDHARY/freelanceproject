import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/firebase_options.dart';
import 'package:freelanceproject/src/bindings/home_binding.dart';
import 'package:freelanceproject/src/controllers/login_controller.dart';
import 'package:get/get.dart';

import 'src/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff141A31),
        primaryColorDark: const Color(0xff081029),
        scaffoldBackgroundColor: const Color(0xff141A31),
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.yellow),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
              padding: MaterialStateProperty.all(const EdgeInsets.all(14))),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow),
      ),
    ),
  );
}
