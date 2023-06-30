import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
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
          vertical:SizeConfig.safeBlockVertical! * 2,
          horizontal: SizeConfig.safeBlockHorizontal! * 3),
      width: size.width * 0.90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal! * 4),
          color: Colors.white),
      child: Row(children: [
        Icon(icon, color: const Color(0xFFBFC2DF)),
        Gap(SizeConfig.safeBlockHorizontal! * 3),
        Text(
          text,
          style: Styles.textStyle,
        )
      ]),
    );
  }
}
