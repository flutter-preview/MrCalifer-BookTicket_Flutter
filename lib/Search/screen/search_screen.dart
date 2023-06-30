import 'package:booktickets/Search/views/discount_offers_view.dart';
import 'package:booktickets/Search/views/header_view.dart';
import 'package:booktickets/Search/views/search_form_view.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 4,
            vertical: SizeConfig.safeBlockVertical! * 4),
        children: [
          Gap(SizeConfig.safeBlockHorizontal! * 5),
          const HeaderView(),
          Gap(SizeConfig.safeBlockHorizontal! * 3),
          const SearchFormView(),
          Gap(SizeConfig.safeBlockHorizontal! * 5),
          const DiscountOffersViews(),
        ],
      ),
    );
  }
}
