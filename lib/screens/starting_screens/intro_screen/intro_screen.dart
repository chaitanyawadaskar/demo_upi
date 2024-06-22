import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/starting_screens/change_language_screen/change_language_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/animated_dot.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/custom_colors/custom_colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController pageController = PageController();
  int activePage = 0;
  final List<Map<String, dynamic>> introData = [
    {
      'title': 'Everything You Need, Ends with DHOOND.',
      'image': ImagePath.slide1,
    },
    {
      'title': 'Book and manage your bookings with quick services',
      'image': ImagePath.slide2,
    },
    {
      'title': 'Pay securely & conveniently with DHOOND Secured Payment option',
      'image': ImagePath.slide3,
    },
    {
      'title': '24x7 services available',
      'image': ImagePath.slide4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: activePage > 0,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            padding: KPadding.horizontal15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBoxHeight(
                  height: 25,
                ),
                Image.asset(
                  ImagePath.dhoond,
                  height: 68.h,
                  width: 212.w,
                  color: CustomColors.black,
                ),
                Text(
                  'Hello! Welcome to DHOOND',
                  style: KText.r20w5,
                ),
                Text(
                  'On Time. Online. On Demand. For You ♡',
                  style: KText.r14Grey,
                ),
                SizedBox(
                  height: 470.h,
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: introData.length,
                      physics: const BouncingScrollPhysics(),
                      pageSnapping: true,
                      onPageChanged: (int page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Image.asset(
                              introData[index]['image'],
                              height: 440.h,
                              width: 359.w,
                            ),
                            Text(
                              introData[index]['title'],
                              style: KText.r12Grey,
                            ),
                          ],
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    introData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: AnimatedDot(isActive: activePage == index),
                    ),
                  ),
                ),
                const SizedBoxHeight(),
                CustomizedButton(
                  onTap: () {
                    Get.to(
                      () => const ChangeLanguageScreen(),
                    );
                  },
                  fontStyle: KText.r14BoldWhite,
                  pad: KPadding.H15V10,
                  borderRadius: 5,
                  backgroundColor: CustomColors.black,
                  text: 'Continue & Next',
                ),
                const SizedBoxHeight(),
                Text(
                  'By continuing, you agree to our',
                  style: KText.r10Grey,
                ),
                Text(
                  'Terms & conditions | Privacy Policy | Content Policy',
                  style: KText.r10,
                ),
                const SizedBoxHeight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
