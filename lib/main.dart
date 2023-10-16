import 'package:flutter/material.dart';
import 'package:siga_go/ColorsTheme.dart';
import 'package:siga_go/Pages/Home.dart';
import 'package:siga_go/RouteGenerator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siga Go',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.transparent,
            primary: ColorsTheme.primary,
            secondary: ColorsTheme.secondary,
            tertiary: ColorsTheme.tertiary),
        useMaterial3: true,
      ),
      home: Home(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
