import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/presentation/mainpage/screen_mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:backgroundcolor,
         fontFamily: GoogleFonts.montserrat().fontFamily,
     textTheme: TextTheme(bodyLarge : TextStyle(color: Colors.white),
    bodyMedium:  TextStyle(color: Colors.white) ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MainPage(),
    );
  }

}