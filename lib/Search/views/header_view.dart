import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("What are\n you looking for?" , style: Styles.headLineStyle1.copyWith(fontSize: 35),);
  }
}