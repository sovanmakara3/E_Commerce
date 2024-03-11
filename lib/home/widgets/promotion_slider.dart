import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/home_controller.dart';
import 'indecator.dart';


class BannerSlider extends StatelessWidget {
  BannerSlider({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<dynamic> images;
  final HomeController homeCtrl = HomeController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => homeCtrl,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Consumer<HomeController>(
            builder: (context, controller, _) {
              return CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int itemIndex, _) {
                  return SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        images[itemIndex],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  onPageChanged: (index, _) =>
                      controller.updatePageIndicator(index),
                  height: 200,
                  autoPlay: false,
                  viewportFraction: 1,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                ),
              );
            },
          ),
          const SizedBox(height: 5),
          Positioned(
            bottom: 10,
            child: Consumer<HomeController>(
              builder: (context, controller, _) => Row(
                children: [
                  for (int i = 0; i < images.length; i++)
                    IndecatorContainer(
                      width: controller.carouselCurrentIndex == i ? 20 : 4,
                      height: 4,
                      margin: const EdgeInsets.only(right: 5),
                      backgroundColor: controller.carouselCurrentIndex == i
                          ? Colors.black
                          : Colors.grey.shade300,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}