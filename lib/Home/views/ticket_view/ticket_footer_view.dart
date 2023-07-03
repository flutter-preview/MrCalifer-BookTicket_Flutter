import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:flutter/material.dart';

class TicketFooterView extends StatelessWidget {
  final String date;
  final String departureTime;
  final int number;
  final bool? isColor;
  const TicketFooterView(
      {Key? key,
      required this.date,
      required this.departureTime,
      required this.number,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isColor == null ? Styles.orangeColor : Colors.white,
        border: Border.all(width: 0, color : isColor == null ? Styles.orangeColor : Colors.white),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
                isColor == null ? SizeConfig.safeBlockHorizontal! * 5 : 0),
            bottomRight: Radius.circular(
                isColor == null ? SizeConfig.safeBlockHorizontal! * 5 : 0)),
      ),
      padding: EdgeInsets.only(
          left: SizeConfig.safeBlockVertical! * 2,
          right: SizeConfig.safeBlockVertical! * 2,
          bottom: SizeConfig.safeBlockVertical! * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                firstText: date,
                secondText: "Date",
                alignment: CrossAxisAlignment.start,
                isColor: isColor,
              ),
              ColumnLayout(
                firstText: departureTime,
                secondText: "Departure Time",
                alignment: CrossAxisAlignment.center,
                isColor: isColor,
              ),
              ColumnLayout(
                firstText: "$number",
                secondText: "Number",
                alignment: CrossAxisAlignment.end,
                isColor: isColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
