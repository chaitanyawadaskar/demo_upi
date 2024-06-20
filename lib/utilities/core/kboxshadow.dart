import 'package:flutter/material.dart';

import '../custom_colors/custom_colors.dart';

class KBoxShadow {
  static final grey = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 12)
  ];

  static final lightGrey = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 12)
  ];
  static final gradient = [
    BoxShadow(
        blurRadius: 4,
        spreadRadius: 1,
        offset: const Offset(0, 1.0),
        color: const Color(0xFFe8e8e8).withOpacity(0.7))
  ];
  static final faintGrey = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.4),
        spreadRadius: 1,
        blurRadius: 12)
  ];

  static final faintGreyLRB = [
    BoxShadow(
      offset: const Offset(-5, 0),
      blurRadius: 10,
      color: CustomColors.grey.withOpacity(0.4),
    ),
    BoxShadow(
      offset: const Offset(5, 0),
      blurRadius: 10,
      color: CustomColors.grey.withOpacity(0.1),
    ),
    BoxShadow(
      offset: const Offset(0, 5),
      blurRadius: 10,
      color: CustomColors.grey.withOpacity(0.1),
    ),
  ];

  static final threeD = [
    BoxShadow(
      color: Colors.black.withOpacity(0.25),
      spreadRadius: -5,
      blurRadius: 10,
      offset: Offset(10, 0), // Shadow only on the right side
    ),
  ];
}
