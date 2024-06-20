import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/kpadding.dart';
import '../core/kradius.dart';
import '../custom_colors/custom_colors.dart';
import '../theme/ktext_theme.dart';

class CustomTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final TextInputType textinputtype;
  final String? Function(String?)? validator;
  final bool readOnly;
  final int? length;
  final int? lengthAtBottom;
  final int? maxLines;
  final Function(String val)? onTextChange;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enableUpperCase;
  final bool enableBorder;
  final Function(String)? onFeildSubmitted;
  final double marginHorizontal;
  final double? height;
  final double? width;
  final bool unfocusOnTapOutside;
  final double radius;
  final Color? backgroundColor;
  final Color hintColor;
  final String regex;
  final String title;
  final bool enableShadow;
  final bool obsecureText;

  const CustomTextFeild({
    super.key,
    required this.controller,
    this.hinttext = '',
    this.validator,
    this.readOnly = false,
    this.length,
    this.prefixIcon,
    this.textinputtype = TextInputType.text,
    required this.onTextChange,
    this.enableUpperCase = false,
    this.onTap,
    this.suffixIcon,
    this.unfocusOnTapOutside = true,
    this.onFeildSubmitted,
    this.marginHorizontal = 0,
    this.height,
    this.width,
    this.radius = 5,
    this.lengthAtBottom,
    this.maxLines,
    this.backgroundColor,
    this.hintColor = CustomColors.grey,
    this.enableBorder = false,
    this.enableShadow = false,
    this.obsecureText = false,
    this.regex = '',
    this.title = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: KPadding.only(bottom: 10),
            child: Text(
              title,
              style: KText.r15Black,
            ),
          ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: marginHorizontal),
          height: height,
          width: width,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            maxLines: maxLines,
            maxLength: lengthAtBottom,
            onTap: onTap,
            obscureText: obsecureText,
            readOnly: readOnly,
            controller: controller,
            validator: validator,
            onChanged: onTextChange,
            inputFormatters: [
              LengthLimitingTextInputFormatter(length),
              if (regex.isNotEmpty)
                FilteringTextInputFormatter.allow(RegExp(regex)),
              enableUpperCase
                  ? UpperCaseTextFormatter()
                  : LowerCaseTextFormatter(),
            ],
            onFieldSubmitted: onFeildSubmitted,
            keyboardType: textinputtype,
            onTapOutside: (event) {
              if (unfocusOnTapOutside) {
                FocusScope.of(context).unfocus();
              }
            },
            style: KText.r18Black,
            decoration: InputDecoration(
              filled: true,
              fillColor: backgroundColor ?? CustomColors.faintGrey,
              contentPadding: REdgeInsets.only(left: 15, top: 10),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintText: hinttext,
              hintStyle: KText.r14Grey,
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius12,
                  // borderRadius: BorderRadius.circular(radius),
                  borderSide: enableBorder
                      ? const BorderSide(color: CustomColors.grey, width: 1)
                      : BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius12,
                  //borderRadius: BorderRadius.circular(radius),
                  borderSide: enableBorder
                      ? BorderSide(color: CustomColors.shadeGrey500, width: 1)
                      : BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius12,
                  //  borderRadius: BorderRadius.circular(radius),
                  borderSide: enableBorder
                      ? const BorderSide(color: CustomColors.grey)
                      : BorderSide.none),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius12,
                  // borderRadius: BorderRadius.circular(radius),
                  borderSide: enableBorder
                      ? BorderSide(color: CustomColors.shadeGrey500, width: 1)
                      : BorderSide.none),
            ),
            cursorColor: CustomColors.grey,
          ),
        ),
      ],
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text,
      selection: newValue.selection,
    );
  }
}
