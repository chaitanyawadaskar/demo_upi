import 'package:country_picker/country_picker.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../components/custom_country_code_picker.dart';
import '../../../utilities/custom_textfeild/customtextfeild.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArrowLeftAppbar(),
      body: Padding(
        padding: KPadding.horizontal15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBoxHeight(
              height: 50,
            ),
            Text(
              'Mobile No',
              style: KText.r36ComfortaaW7,
            ),
            InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode:
                      true, // optional. Shows phone code before the country name.
                  onSelect: (Country country) {
                    print('Select country: ${country.displayName}');
                  },
                );
              },
              child: Text(
                'Enter a mobile number',
                style: KText.r12Grey,
              ),
            ),
            const SizedBoxHeight(),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 120,
                  child: CustomCountryCodePicker(
                    onChanged: (element) => debugPrint(element.toLongString()),
                    initialSelection: 'IN',
                    hideSearch: true,
                    showFlag: true,
                    showFlagMain: false,
                    showDropDownButton: true,
                    textStyle: KText.r20Bold,
                  ),
                ),
                Expanded(
                    child: CustomTextFeild(
                        controller: TextEditingController(),
                        onTextChange: (val) {}))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
