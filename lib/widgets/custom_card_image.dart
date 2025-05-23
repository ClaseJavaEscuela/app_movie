import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/images.png'),
        image: NetworkImage("https://picsum.photos/200/300.jpg"),
      ),
    );
  }
}
