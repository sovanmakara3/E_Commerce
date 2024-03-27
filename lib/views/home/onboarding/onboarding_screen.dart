import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../homepage_contain.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      skipStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 17)),
        foregroundColor: MaterialStateProperty.all(Colors.redAccent),
      ),
      allowImplicitScrolling: true,
      autoScrollDuration: 30000,
      infiniteAutoScroll: true,
      pages: [
        // shopping
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              const Image(image: AssetImage('assets/images/shopping.png')),
              const SizedBox(height: 60),
              Text(
                'Looking for Items...',
                // style: GoogleFonts.outfit(
                //     fontSize: 30,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.black),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              Text(
                'Our new service makes it easy for you to\nwork anywhere, there are new features \nwill really help you.',
                textAlign: TextAlign.left,
                // style: GoogleFonts.outfit(
                //   height: 1.8,
                //   letterSpacing: 0.6,
                //   wordSpacing: 5.0,
                //   color: Colors.grey.shade700,
                // ),
                style: TextStyle(
                    height: 1.8,
                    letterSpacing: 0.6,
                    wordSpacing: 5.0,
                    color: Colors.grey.shade700),
              ),
            ],
          ),
        ),

        // payment
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/images/payment.png')),
              const SizedBox(height: 60),
              Text(
                'Make a Payment',
                textAlign: TextAlign.left,
                // style: GoogleFonts.outfit(
                //   fontSize: 30,
                //   fontWeight: FontWeight.bold,
                //   color: Colors.black,
                // ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Our new service makes it easy for you to\nwork anywhere, there are new features \nwill really help you.',
                textAlign: TextAlign.left,
                // style: GoogleFonts.outfit(
                //   height: 1.8,
                //   letterSpacing: 0.6,
                //   wordSpacing: 5.0,
                //   color: Colors.grey.shade700,
                // ),
                style: TextStyle(
                  height: 1.8,
                  letterSpacing: 0.6,
                  wordSpacing: 5.0,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),

        //delivery
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/images/delivery.png')),
              const SizedBox(height: 60),
              Text(
                'Send items',
                // style: GoogleFonts.outfit(
                //   fontSize: 30,
                //   fontWeight: FontWeight.bold,
                //   color: Colors.black,
                // ),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Our new service makes it easy for you to\nwork anywhere, there are new features \nwill really help you.',
                textAlign: TextAlign.left,
                // style: GoogleFonts.outfit(
                //   height: 1.8,
                //   letterSpacing: 0.6,
                //   wordSpacing: 5.0,
                //   color: Colors.grey.shade700,
                // ),
                style: TextStyle(
                    height: 1.8,
                    letterSpacing: 0.6,
                    wordSpacing: 5.0,
                    color: Colors.grey.shade700),
              ),
            ],
          ),
        ),
      ],

      // Style
      baseBtnStyle: TextButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text(
        'Done',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      onDone: () => _onIntroEnd(context),
      nextStyle: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
        Colors.black,
      )),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10),
        activeColor: Colors.black,
        activeSize: Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }
}
