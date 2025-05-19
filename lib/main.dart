import 'package:flutter/material.dart';
import 'package:movie_app/screens/details_screen.dart';
import 'package:movie_app/screens/home_screen.dart';

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
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(_)=>HomeScreen(),
        'details': (_)=>DetailsScreen()
      },
      home: Scaffold(
          appBar: AppBar(title: Text("Aplicacion de peliculas")),
          body: Center(child: Text("Hola mundo"),),
      ),
    );
  }
}
