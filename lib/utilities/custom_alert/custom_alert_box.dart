import 'package:flutter/material.dart';

import '../custom_colors/custom_colors.dart';

class CustomAlertBox extends StatelessWidget {
  final String text;
  final Function onTap;
  const CustomAlertBox({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Container(
        // height: height,
        padding: const EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 22),
              child: Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, color: CustomColors.black),
              ),
            ),
            Container(
              color: CustomColors.shadeGrey300,
              height: 2,
            ),
            GestureDetector(
              onTap: () => onTap(),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 0),
                child: const Text(
                  'OK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: CustomColors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
