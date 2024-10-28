import 'package:aqmps/Constant/Constant.dart';
import 'package:aqmps/Startpg.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    /*MultiProvider(
    providers: const [],
    child:*/
    const MyApp(), /*
  ))*/
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Air Quality Monitoring and Prediction System",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          brightness: Brightness.dark,
        ),
        home: Startpg());
  }
}
