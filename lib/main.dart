import 'package:dancing_man/pages/dancingManPage.dart';
import 'package:dancing_man/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      MyRoutes.dancingRoute: (context) => const DancingMan(),
    });
  }
}
