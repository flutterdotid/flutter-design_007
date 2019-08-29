import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyBannerHome extends StatefulWidget {
  @override
  _MyBannerHomeState createState() => _MyBannerHomeState();
}

class _MyBannerHomeState extends State<MyBannerHome> {
  List<String> _banner = [
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Swiper(
        loop: true,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            _banner[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: _banner.length,
        pagination: SwiperPagination(
          builder: SwiperPagination.dots,
          margin: EdgeInsets.only(bottom: 30),
        ),
        // control: SwiperControl(),
      ),
    );
  }
}
