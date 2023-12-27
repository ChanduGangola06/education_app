import 'package:education_app/core/common/widgets/gradient_background.dart';
import 'package:education_app/core/res/colours.dart';
import 'package:education_app/core/res/media_res.dart';
import 'package:education_app/domain/entities/onboard_page_content.dart';
import 'package:education_app/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static const routeName = '/';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GradientBackground(
        image: MediaRes.onBoardingBackground,
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              children: const [
                OnBoardingBody(pageContent: PageContent.first()),
                OnBoardingBody(pageContent: PageContent.second()),
                OnBoardingBody(pageContent: PageContent.third()),
              ],
            ),
            Positioned(
              bottom: 125,
              left: 125,
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                onDotClicked: (index) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                effect: const WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 40,
                  activeDotColor: Colours.primaryColour,
                  dotColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
