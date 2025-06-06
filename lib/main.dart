import 'package:flutter/material.dart';
import 'package:movie_app/providers/movie_provider.dart';
import 'package:movie_app/screens/details_screen.dart';
import 'package:movie_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppProvider());
}

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>MovieProvider(),lazy: false)
    ],
    child: MyApp(),
    );
  }
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
