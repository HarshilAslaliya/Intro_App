import 'package:flutter/material.dart';
import 'package:intro_app/views/screens/LoginPage.dart';
import 'package:intro_app/views/screens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool isStart = prefs.getBool('isStart') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isStart == false) ? 'login_page1' : '/',
      routes: {
        '/': (context) => HomePage(),
        'login_page1': (context) => LoginPage(),
      },
    ),
  );
}
