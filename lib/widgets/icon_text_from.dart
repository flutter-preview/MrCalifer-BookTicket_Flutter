import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconTextForm extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextForm({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getWidth(12)),
      width: size.width * 0.90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Colors.white),
      child: Row(children: [
        Icon(icon, color: const Color(0xFFBFC2DF)),
        Gap(AppLayout.getWidth(10)),
        Text(
          text,
          style: Styles.textStyle,
        )
      ]),
    );
  }
}
