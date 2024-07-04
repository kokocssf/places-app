import 'package:app6/screens/places.dart';
import 'package:flutter/material.dart';



final ColorScheme colorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 183, 2, 255),
    background: Colors.brown,
    brightness: Brightness.dark
    
    );

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
      theme: ThemeData().copyWith(
        colorScheme: colorScheme,
        useMaterial3: true,
        scaffoldBackgroundColor: colorScheme.background,
    
      ),
      home: PlacesScreen()
    );
  }
}
