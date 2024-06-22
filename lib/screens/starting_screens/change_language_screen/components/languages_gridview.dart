import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/language_tile.dart';

class LanguageGridView extends StatelessWidget {
  const LanguageGridView({
    super.key,
    required this.onLanguagePress,
  });
  final Function(String) onLanguagePress;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languages = [
      {'name': 'ENGLISH', 'color': '0xFFE0F7FA'},
      {'name': 'हिंदी', 'color': '0xFFF8BBD0'},
      {'name': 'मराठी', 'color': '0xFFFFEBEE'},
      {'name': 'తెలుగు', 'color': '0xFFE0F2F1'},
      {'name': 'മലയാളം', 'color': '0xFFFFF9C4'},
      {'name': 'ಕನ್ನಡ', 'color': '0xFFE1F5FE'},
      {'name': 'தமிழ்', 'color': '0xFFEDE7F6'},
      {'name': 'বাংলা', 'color': '0xFFFFFDE7'},
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 400.h,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              mainAxisExtent: 80.h),
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return LanguageTile(
              language: languages[index]['name']!,
              color: Color(int.parse(languages[index]['color']!)),
              onTap: () {
                onLanguagePress('${languages[index]['name']}');
              },
            );
          },
        ),
      ),
    );
  }
}
