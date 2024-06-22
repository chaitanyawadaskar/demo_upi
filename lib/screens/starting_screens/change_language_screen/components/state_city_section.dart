import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_dropdown/custom_dropdown.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../../mobile_number_screen/mobile_number_screen.dart';
import '../change_language_screen.dart';

class StateCitySection extends StatelessWidget {
  const StateCitySection({
    super.key,
    required this.language,
  });
  final String language;
  @override
  Widget build(BuildContext context) {
    String? values;

    return Column(
      children: [
        Text(
          language,
          style: KText.r14Bold,
        ),
        const SizedBoxHeight(
          height: 70,
        ),
        CustomDropdown(
          values: values,
          title: 'State',
          onChange: (p0) {},
          list: <String>['A', 'B', 'C', 'D'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: KText.r14,
              ),
            );
          }).toList(),
        ),
        const SizedBoxHeight(),
        CustomDropdown(
          values: values,
          title: 'City',
          onChange: (p0) {},
          list: <String>['A', 'B', 'C', 'D'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: KText.r14,
              ),
            );
          }).toList(),
        ),
        const SizedBoxHeight(
          height: 20,
        ),
        CustomizedButton(
          onTap: () {
            Get.to(
              () => const MobileNumberScreen(),
            );
          },
          fontStyle: KText.r14BoldWhite,
          pad: KPadding.H15V10,
          borderRadius: 5,
          backgroundColor: CustomColors.black,
          text: 'Save',
        ),
      ],
    );
  }
}
