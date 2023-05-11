import 'package:disenos_flutter/src/pages/basico_page.dart';
import 'package:disenos_flutter/src/pages/botones_page.dart';
import 'package:disenos_flutter/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.light,
      )
    );

    return MaterialApp(
      title: 'Disenos',
      debugShowCheckedModeBanner: false,
      initialRoute: 'botones',
      routes: {
        'basico': (context) => const BasicoPage(),
        'scroll': (context) => const ScrollPage(),
        'botones': (context) => const BotonesPage(),

      },
    );
  }
}