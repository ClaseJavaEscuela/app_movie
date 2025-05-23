import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/widgets/custom_card_image.dart';

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightResponsive = size.height * .5;

    return Container(
      width: double.infinity,
      color: Colors.transparent,
      height: heightResponsive,
      child: Swiper(
        itemBuilder: (context, index) {
          return CustomCardImage();
        },
        itemCount: 10,
        itemWidth: 500,
        autoplay: true,

        control: SwiperControl(color: Colors.white),
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
