import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie App"), backgroundColor: Colors.white12),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSwiper(),
            SizedBox(height: 20),
            CustomListView(),
            SizedBox(height: 20),
            CustomListView(),
            SizedBox(height: 20),
            CustomListView(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
