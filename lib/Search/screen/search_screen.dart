import 'package:booktickets/Search/views/discount_offers_view.dart';
import 'package:booktickets/Search/views/header_view.dart';
import 'package:booktickets/Search/views/search_form_view.dart';
import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
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
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          const HeaderView(),
          Gap(AppLayout.getHeight(20)),
          const SearchFormView(),
          Gap(AppLayout.getHeight(40)),
          const DiscountOffersViews(),
        ],
      ),
    );
  }
}
