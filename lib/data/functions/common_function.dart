import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utilities/constant/constant.dart';
import '../local_database/shared_pref.dart';

enum Langauge { eng, mar, hin }

class Functions {
  static String formatDate(String date, {String format = 'dd/MM/yyyy'}) {
    String formattedDate = DateFormat(format).format(DateTime.parse(date));

    return formattedDate;
  }

  static String formatTime(String time) {
    String formattedTime = DateFormat.jm().format(DateTime.parse(time));

    return formattedTime;
  }

  static launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future<File?> pickImage(ImageSource imageType) async {
    final picker = ImagePicker();

    final pickedFile =
        await picker.pickImage(source: imageType, imageQuality: 50);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  static Future<String?> selectDate(BuildContext context,
      {DateTime? initialDate,
      firstDate,
      lastDate,
      bool Function(DateTime)? selectableDayPredicate}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(2022),
      lastDate: lastDate ?? DateTime.now(),
      selectableDayPredicate: selectableDayPredicate,
    );
    if (picked != null) {
      var date = formatDate(picked.toString(), format: 'yyyy-MM-dd');
      return date;
    }
    return null;
  }

  // static openGateway(String orderId, double amount, Razorpay razorpay) {
  //   var options = {
  //     'key': razorpayKey,
  //     'amount': 100 * amount,
  //     'name': 'Om Winners',
  //     'order_id': orderId,
  //     'description': 'order description',
  //     'timeout': 60 * 5,
  //     'prefill': {
  //       'contact': '8080156839',
  //       'email': 'deepak.kalal@profcyma.com',
  //     }
  //   };
  //   razorpay.open(options);
  // }

  // static handlePaymentSuccess(PaymentSuccessResponse response) {}

  // static handlePaymentError(PaymentFailureResponse response) {
  //   Get.showSnackbar(GetSnackBar(
  //     message: response.message ?? '',
  //     duration: const Duration(seconds: 3),
  //   ));
  // }

  // static handleExternalWallet(ExternalWalletResponse response) {
  //   Get.showSnackbar(GetSnackBar(
  //     message: response.walletName ?? '',
  //     duration: const Duration(seconds: 3),
  //   ));
  // }

  static void updateLanguage({Langauge language = Langauge.eng}) {
    var locale = language == Langauge.eng
        ? const Locale('en', 'US')
        : language == Langauge.hin
            ? const Locale('hi', 'IN')
            : const Locale('mr', 'IN');
    Get.updateLocale(locale);
    saveLocalization(language == Langauge.eng
        ? '1'
        : language == Langauge.hin
            ? '2'
            : '3');
  }

  static void startCountdown({
    Timer? countTimer,
    int remainingSeconds = 20,
    required Function(int) onTick,
  }) {
    const oneSecond = Duration(seconds: 1);
    countTimer = Timer.periodic(oneSecond, (Timer timer) {
      if (remainingSeconds <= 0) {
        timer.cancel();
      } else {
        remainingSeconds--;
        onTick(remainingSeconds);
      }
    });
  }
}
