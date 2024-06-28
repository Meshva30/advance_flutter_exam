import 'package:advance_flutter_exam/screen/detils.dart';
import 'package:advance_flutter_exam/screen/homescreen.dart';
import 'package:advance_flutter_exam/screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/news_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Splashscreen(),
    );
  }
}
