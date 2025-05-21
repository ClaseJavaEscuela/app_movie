import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightResponsive = size.height * .5;

    return Container(
      width: double.infinity,
      height: heightResponsive,
      child: Swiper(
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white24,
            child: FadeInImage(
              placeholder: AssetImage('assets/images/images.png'),
              image: NetworkImage("https://picsum.photos/200/300.jpg"),
            ),
          );
        },
        itemCount: 10,
        autoplay: true,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}
