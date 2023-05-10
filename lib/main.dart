import 'package:disenos_flutter/src/pages/basico_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disenos',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basico',
      routes: {
        'basico':(context) => BasicoPage(),

      },
    );
  }
}