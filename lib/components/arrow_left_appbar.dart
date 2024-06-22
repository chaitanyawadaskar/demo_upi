import 'package:flutter/material.dart';
import '../utilities/core/kpadding.dart';
import 'left_arrow_button.dart';

class ArrowLeftAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ArrowLeftAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: KPadding.only(top: 25, left: 25),
      child: const LeftArrowButton(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
