import 'package:dashboard/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: GoogleFonts.lato(
            fontSize: 15,
          ),
        ),
      ),
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
