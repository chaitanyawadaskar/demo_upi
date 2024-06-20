import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_colors/custom_colors.dart';

class KText {
  // standard
  static final r11 = GoogleFonts.roboto(
    fontSize: 10.sp,
  );
  static final r14RedUnderline = GoogleFonts.roboto(
      fontSize: 14.sp,
      color: CustomColors.red,
      decoration: TextDecoration.underline,
      decorationColor: CustomColors.red);
  static final r12 =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.black);
  static final r14Blue =
      GoogleFonts.poppins(fontSize: 14.sp, color: CustomColors.blue);
  static final r12grey =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.grey);
  static final r13 =
      GoogleFonts.roboto(fontSize: 13.sp, color: CustomColors.black);
  static final r13orange =
      GoogleFonts.roboto(fontSize: 13.sp, color: CustomColors.orange);
  static final r13white =
      GoogleFonts.roboto(fontSize: 13.sp, color: CustomColors.white);
  static final r14UnderlineRed = GoogleFonts.poppins(
      fontSize: 14.sp,
      decoration: TextDecoration.underline,
      color: CustomColors.red);
  static final r17 = GoogleFonts.roboto(
      fontSize: 17.sp, fontWeight: FontWeight.w500, color: CustomColors.black);

  static final r14 = GoogleFonts.roboto(
    fontSize: 14.sp,
  );
  static final r15 = GoogleFonts.roboto(
    fontSize: 15.sp,
  );
  static final r15LineThrough = GoogleFonts.roboto(
      fontSize: 16.sp,
      decoration: TextDecoration.lineThrough,
      color: CustomColors.grey);
  static final r16 =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.black);
  static final r16Underline = GoogleFonts.roboto(
      fontSize: 16.sp,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      color: CustomColors.black);
  static final r18 = GoogleFonts.roboto(
    fontSize: 18.sp,
  );
  static final r22w5Black = GoogleFonts.roboto(
      fontSize: 22.sp, fontWeight: FontWeight.w500, color: CustomColors.black);
  static final r18w5Black = GoogleFonts.roboto(
      fontSize: 18.sp, fontWeight: FontWeight.w500, color: CustomColors.black);
  static final r16w5Black = GoogleFonts.roboto(
      fontSize: 16.sp, fontWeight: FontWeight.w500, color: CustomColors.black);
  static final r18Underline = GoogleFonts.roboto(
      fontSize: 18.sp,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      color: CustomColors.black);
  static final r20 = GoogleFonts.roboto(
    fontSize: 20.sp,
  );
  static final r25 = GoogleFonts.roboto(
    fontSize: 25.sp,
  );
  static final r28 = GoogleFonts.roboto(
    fontSize: 28.sp,
  );

  // bold
  static final r11Bold =
      GoogleFonts.roboto(fontSize: 11.sp, fontWeight: FontWeight.bold);

  static final r12Bold =
      GoogleFonts.roboto(fontSize: 12.sp, fontWeight: FontWeight.bold);

  static final r13Bold =
      GoogleFonts.roboto(fontSize: 13.sp, fontWeight: FontWeight.bold);

  static final r14Bold =
      GoogleFonts.roboto(fontSize: 14.sp, fontWeight: FontWeight.bold);

  static final r15Bold =
      GoogleFonts.roboto(fontSize: 15.sp, fontWeight: FontWeight.bold);

  static final r16Bold = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static final r18Bold =
      GoogleFonts.roboto(fontSize: 18.sp, fontWeight: FontWeight.bold);

  static final r20Bold =
      GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.bold);

  static final r22Bold =
      GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.bold);

  static final r24Bold =
      GoogleFonts.roboto(fontSize: 24.sp, fontWeight: FontWeight.bold);

  static final r25Bold =
      GoogleFonts.roboto(fontSize: 25.sp, fontWeight: FontWeight.bold);

  static final r28Bold =
      GoogleFonts.roboto(fontSize: 28.sp, fontWeight: FontWeight.bold);

  // bold colored
  static final r15BoldWhite = GoogleFonts.roboto(
      fontSize: 15, fontWeight: FontWeight.bold, color: CustomColors.white);
  static final r15BoldBlack = GoogleFonts.roboto(
      fontSize: 15.sp, fontWeight: FontWeight.bold, color: CustomColors.black);
  static final r16BoldWhite = GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.bold, color: CustomColors.white);

  static final r18BoldWhite = GoogleFonts.roboto(
      fontSize: 18, fontWeight: FontWeight.bold, color: CustomColors.white);

  static final r20BoldRed = GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.red);
  static final r16BoldBlack = GoogleFonts.roboto(
      fontSize: 16.sp, fontWeight: FontWeight.bold, color: CustomColors.black);
  static final r20BoldWhite = GoogleFonts.roboto(
      fontSize: 20.sp, fontWeight: FontWeight.w900, color: CustomColors.white);
  static final r20BoldBlack = GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.black);
  static final r25BoldBlack = GoogleFonts.roboto(
      fontSize: 25, fontWeight: FontWeight.bold, color: CustomColors.black);
  static final r26BoldBlack = GoogleFonts.roboto(
      fontSize: 26, fontWeight: FontWeight.bold, color: CustomColors.black);
  static final r26WhiteBold = GoogleFonts.roboto(
      fontSize: 26.sp, fontWeight: FontWeight.bold, color: CustomColors.white);
  static final r30WhiteBold = GoogleFonts.roboto(
      fontSize: 30.sp, fontWeight: FontWeight.bold, color: CustomColors.white);

  // semi-bold colored
  static final r12w5White = GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.w500, color: CustomColors.white);
  static final r12w5purple = GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.w500, color: CustomColors.purple);
  static final r15w5White = GoogleFonts.roboto(
      fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.white);

  static final r12w5Black = GoogleFonts.roboto(
      fontSize: 12.sp, fontWeight: FontWeight.w500, color: CustomColors.black);

  static final r15w5Black = GoogleFonts.roboto(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: CustomColors.black);
  static final r15w5red = GoogleFonts.roboto(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: CustomColors.red);

  static final r15w7Black = GoogleFonts.roboto(
      fontSize: 15.sp, fontWeight: FontWeight.w700, color: CustomColors.black);
  static final r15w7Blue = GoogleFonts.roboto(
      fontSize: 15.sp, fontWeight: FontWeight.w700, color: CustomColors.blue);
  static final r15BoldGreen = GoogleFonts.roboto(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: CustomColors.gradientGreen1);
  static final r16w5White = GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.w500, color: CustomColors.white);

  static final r18w5White = GoogleFonts.roboto(
      fontSize: 18, fontWeight: FontWeight.w500, color: CustomColors.white);
  static final r20w5Red = GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.w500, color: CustomColors.red);
  static final r20w5White = GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.w500, color: CustomColors.white);
  static final r20w5Black = GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.w500, color: CustomColors.black);
  static final r25w5Black = GoogleFonts.roboto(
      fontSize: 25, fontWeight: FontWeight.w500, color: CustomColors.black);
  static final r25w5White = GoogleFonts.roboto(
      fontSize: 25.sp, fontWeight: FontWeight.w500, color: CustomColors.white);

  // colored
  static final r10White =
      GoogleFonts.roboto(fontSize: 10, color: CustomColors.white);
  static final r11White =
      GoogleFonts.roboto(fontSize: 11, color: CustomColors.white);
  static final r12White =
      GoogleFonts.roboto(fontSize: 12, color: CustomColors.white);
  static final r12Orange =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.borderOrange);
  static final r14White =
      GoogleFonts.roboto(fontSize: 14, color: CustomColors.white);
  static final r14Orange =
      GoogleFonts.roboto(fontSize: 14, color: CustomColors.borderOrange);
  static final r14w5White = GoogleFonts.roboto(
      fontSize: 14, color: CustomColors.white, fontWeight: FontWeight.w500);
  static final r14w5black = GoogleFonts.roboto(
      fontSize: 14, color: CustomColors.black, fontWeight: FontWeight.w500);
  static final r14wpurple = GoogleFonts.roboto(
      fontSize: 14,
      color: CustomColors.darkPurple,
      fontWeight: FontWeight.w500);

  static final r15White =
      GoogleFonts.roboto(fontSize: 15.sp, color: CustomColors.white);
  static final r16White =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.white);
  static final r16Orange =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.borderOrange);
  static final r18White =
      GoogleFonts.roboto(fontSize: 18.sp, color: CustomColors.white);

  static final r12Red =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.red);
  static final r14Red =
      GoogleFonts.roboto(fontSize: 14.sp, color: CustomColors.red);
  static final r16Red =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.red);
  static final r16voilet =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.voilet);
  static final r20White =
      GoogleFonts.roboto(fontSize: 20.sp, color: CustomColors.white);
  static final r22White =
      GoogleFonts.roboto(fontSize: 22.sp, color: CustomColors.white);
  static final r23White =
      GoogleFonts.roboto(fontSize: 23.sp, color: CustomColors.white);
  static final r24White =
      GoogleFonts.roboto(fontSize: 24.sp, color: CustomColors.white);
  static final r25White =
      GoogleFonts.roboto(fontSize: 25.sp, color: CustomColors.white);
  static final r26White =
      GoogleFonts.roboto(fontSize: 26.sp, color: CustomColors.white);
  static final r15Black =
      GoogleFonts.roboto(fontSize: 15.sp, color: CustomColors.black);
  static final r12Black =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.black);
  static final r16Black =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.black);
  static final r18blackunderline = GoogleFonts.roboto(
      fontSize: 18.sp,
      color: CustomColors.black,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);
  static final r12blackunderline = GoogleFonts.roboto(
      fontSize: 13.sp,
      color: CustomColors.black,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);
  static final r11Grey =
      GoogleFonts.roboto(fontSize: 11.sp, color: CustomColors.grey);
  static final r12Grey =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.grey);
  static final r12Green =
      GoogleFonts.roboto(fontSize: 12.sp, color: CustomColors.green);
  static final r14Grey =
      GoogleFonts.roboto(fontSize: 14.sp, color: CustomColors.grey);
  static final r14BlackBold = GoogleFonts.roboto(
      fontSize: 14.sp, color: CustomColors.black, fontWeight: FontWeight.bold);
  static final r14WhiteBold = GoogleFonts.roboto(
      fontSize: 14.sp, color: CustomColors.white, fontWeight: FontWeight.bold);
  static final r12BlackBold = GoogleFonts.roboto(
      fontSize: 12.sp, color: CustomColors.black, fontWeight: FontWeight.bold);

  static final r15Grey =
      GoogleFonts.roboto(fontSize: 15.sp, color: CustomColors.grey);

  static final r16Green =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.green);

  static final r16Grey =
      GoogleFonts.roboto(fontSize: 16.sp, color: CustomColors.grey);
  static final r17Grey =
      GoogleFonts.roboto(fontSize: 17.sp, color: CustomColors.grey);
  static final r18Green =
      GoogleFonts.roboto(fontSize: 18.sp, color: CustomColors.green);
  static final r18Red =
      GoogleFonts.roboto(fontSize: 18.sp, color: CustomColors.red);
  static final r18Black =
      GoogleFonts.roboto(fontSize: 18.sp, color: CustomColors.black);
  static final r18Grey =
      GoogleFonts.roboto(fontSize: 18.sp, color: CustomColors.grey);
  static final r20Red =
      GoogleFonts.roboto(fontSize: 20.sp, color: CustomColors.red);
  static final r20Black =
      GoogleFonts.roboto(fontSize: 20.sp, color: CustomColors.black);
  static final r20Grey =
      GoogleFonts.roboto(fontSize: 20.sp, color: CustomColors.grey);

  static final r22Black =
      GoogleFonts.roboto(fontSize: 22.sp, color: CustomColors.black);
  static final r22Blue =
      GoogleFonts.roboto(fontSize: 22.sp, color: CustomColors.blue);

//decoration text
  static final r12Underline =
      GoogleFonts.roboto(fontSize: 12.sp, decoration: TextDecoration.underline);
  static final r12WhiteUnderline = GoogleFonts.roboto(
    fontSize: 12.sp,
    color: CustomColors.white,
    decoration: TextDecoration.underline,
    decorationColor: CustomColors.white,
  );
  static final r12BoldUnderline = GoogleFonts.roboto(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);
  static final r15GreyUnderline = GoogleFonts.roboto(
      fontSize: 15.sp,
      color: CustomColors.grey,
      decoration: TextDecoration.underline);
  static final r15lineThrough = GoogleFonts.roboto(
      fontSize: 16.sp,
      decoration: TextDecoration.lineThrough,
      color: CustomColors.grey);
}
