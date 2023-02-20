import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gpdi_jateng/config/app_asset.dart';

class CarouselBanner extends StatelessWidget {
  CarouselBanner({super.key});

  final List<String> imgList = [AppAsset.banner1, AppAsset.banner2];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        margin: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.6,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Center(
                  child: SizedBox(
                      height: 250,
                      child:
                          Image.asset(item, fit: BoxFit.cover, width: 1000))))
              .toList(),
        ));
  }
}
