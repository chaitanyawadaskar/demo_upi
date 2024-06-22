import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/arrow_left_appbar.dart';
import 'components/languages_gridview.dart';
import 'components/state_city_section.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  bool enableLanguageSection = false;
  String language = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArrowLeftAppbar(),
      body: Padding(
        padding: KPadding.horizontal15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBoxHeight(
              height: 50,
            ),
            Text(
              'Change your language',
              style: KText.r20Bold,
            ),
            const SizedBoxHeight(),
            IconButton(
              onPressed: () {
                setState(() {
                  enableLanguageSection = !enableLanguageSection;
                });
              },
              visualDensity: VisualDensity.compact,
              icon: Icon(enableLanguageSection
                  ? CupertinoIcons.chevron_down_circle
                  : CupertinoIcons.chevron_right_circle),
            ),
            const SizedBoxHeight(
              height: 5,
            ),
            enableLanguageSection
                ? LanguageGridView(
                    onLanguagePress: (val) {
                      setState(() {
                        language = val;
                      });
                      enableLanguageSection = !enableLanguageSection;
                    },
                  )
                : StateCitySection(
                    language: language,
                  ),
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              ImagePath.dhoond,
              height: 36.h,
              width: 160.w,
              color: CustomColors.black,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
