import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal! * 8),
          color: const Color(0xFFF4F6FD)),
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal! * 3),
      child: Row(children: [
        const Icon(FluentSystemIcons.ic_fluent_search_regular,
            color: Color(0xFFBFC205)),
        Gap(SizeConfig.safeBlockHorizontal! * 3),
        Text("Search", style: Styles.headLineStyle4)
      ]),
    );
  }
}
