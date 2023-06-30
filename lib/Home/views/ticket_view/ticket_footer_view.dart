import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketFooterView extends StatelessWidget {
  final String date;
  final String dedepartureTime;
  final int number;
  final bool? isColor;
  const TicketFooterView(
      {Key? key,
      required this.date,
      required this.dedepartureTime,
      required this.number,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isColor == null ? Styles.orangeColor : Colors.white,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.white)
                        : Styles.headLineStyle3,
                  ),
                  Gap(SizeConfig.safeBlockVertical! * 1),
                  Text(
                    "Date",
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dedepartureTime,
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.white)
                        : Styles.headLineStyle3,
                  ),
                  Gap(SizeConfig.safeBlockVertical! * 1),
                  Text(
                    "Departure Time",
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$number",
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.white)
                        : Styles.headLineStyle3,
                  ),
                  Gap(SizeConfig.safeBlockVertical! * 1),
                  Text(
                    "Number",
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
