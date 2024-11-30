import 'package:expense/data/onboarding_data.dart';
import 'package:expense/screens/onboarding/front_page.dart';
import 'package:expense/screens/onboarding/shared_onboarding_screen.dart';
import 'package:expense/screens/user_data_page.dart';
import 'package:expense/utils/colors.dart';
import 'package:expense/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //---- page controller -----//
  final PageController _controller = PageController();
  bool showDetailPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      showDetailPage = index == 3;
                    });
                  },
                  children: [
                    const FrontPage(),
                    SharedOnboardingScreen(
                      imagePath: OnboardingData.onboardingDataList[0].imagePath,
                      title: OnboardingData.onboardingDataList[0].title,
                      description:
                          OnboardingData.onboardingDataList[0].description,
                    ),
                    SharedOnboardingScreen(
                      imagePath: OnboardingData.onboardingDataList[1].imagePath,
                      title: OnboardingData.onboardingDataList[1].title,
                      description:
                          OnboardingData.onboardingDataList[1].description,
                    ),
                    SharedOnboardingScreen(
                      imagePath: OnboardingData.onboardingDataList[2].imagePath,
                      title: OnboardingData.onboardingDataList[2].title,
                      description:
                          OnboardingData.onboardingDataList[2].description,
                    ),
                  ],
                ),
                //----------- page indicator -------------//
                Container(
                  alignment: const Alignment(0, 0.7),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: purpuleColor,
                      dotColor: grayColor,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  ),
                ),

                //------ navigation button -------//
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: !showDetailPage
                          ? GestureDetector(
                              onTap: () {
                                _controller.animateToPage(
                                  _controller.page!.toInt() + 1,
                                  duration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: CustomButton(
                                bgColor: purpuleColor,
                                title: showDetailPage ? "Get Started" : "Next",
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                //-- Navigation user data page --//
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const UserDataPage(),
                                  ),
                                );
                              },
                              child: CustomButton(
                                bgColor: purpuleColor,
                                title: showDetailPage ? "Get Started" : "Next",
                              ),
                            )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
