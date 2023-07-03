import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketHeaderView extends StatelessWidget {
  final String fromCode;
  final String fromName;
  final String toCode;
  final String toName;
  final String flyingTime;
  final bool? isColor;
  const TicketHeaderView(
      {Key? key,
      required this.fromCode,
      required this.fromName,
      required this.toCode,
      required this.toName,
      required this.flyingTime,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isColor == null ? const Color(0xFF526799) : Colors.white,
        border: Border.all(
            width: 0,
            color: isColor == null ? const Color(0xFF526799) : Colors.white),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.safeBlockHorizontal! * 5),
            topRight: Radius.circular(SizeConfig.safeBlockHorizontal! * 5)),
      ),
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 3),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                fromCode,
                style: isColor == null
                    ? Styles.headLineStyle3.copyWith(color: Colors.white)
                    : Styles.headLineStyle3,
              ),
              const Spacer(),
              ThickContainer(
                isColor: isColor,
              ),
              Expanded(
                  child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: LayoutBuilder(
                        builder: ((context, constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 8).floor(),
                                  (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: isColor == null
                                                    ? Colors.white
                                                    : Colors.grey.shade300)),
                                      )));
                        }),
                      ),
                    ),
                  ),
                  Center(
                    child: Transform.rotate(
                      angle: 1.55,
                      child: Icon(
                        Icons.local_airport_rounded,
                        color: isColor == null
                            ? Colors.white
                            : const Color(0xFF8ACCF4),
                      ),
                    ),
                  )
                ],
              )),
              ThickContainer(
                isColor: isColor,
              ),
              const Spacer(),
              Text(
                toCode,
                style: isColor == null
                    ? Styles.headLineStyle3.copyWith(color: Colors.white)
                    : Styles.headLineStyle3,
              )
            ],
          ),
          Gap(SizeConfig.safeBlockVertical! * 0.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 20,
                child: Text(
                  fromName,
                  style: isColor == null
                      ? Styles.headLineStyle4.copyWith(color: Colors.white)
                      : Styles.headLineStyle4,
                ),
              ),
              Text(
                flyingTime,
                style: isColor == null
                    ? Styles.headLineStyle4.copyWith(color: Colors.white)
                    : Styles.headLineStyle4.copyWith(color: Colors.black87),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 20,
                child: Text(
                  toName,
                  textAlign: TextAlign.end,
                  style: isColor == null
                      ? Styles.headLineStyle4.copyWith(color: Colors.white)
                      : Styles.headLineStyle4,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
