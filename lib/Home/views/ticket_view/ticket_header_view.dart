import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketHeaderView extends StatelessWidget {
  final String fromCode;
  final String fromName;
  final String toCode;
  final String toName;
  final String flyingTime;
  const TicketHeaderView(
      {Key? key,
      required this.fromCode,
      required this.fromName,
      required this.toCode,
      required this.toName,
      required this.flyingTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF526799),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21), topRight: Radius.circular(21)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                fromCode,
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
              const Spacer(),
              const ThickContainer(),
              Expanded(
                  child: Stack(
                children: [
                  SizedBox(
                    height: 24,
                    child: LayoutBuilder(
                      builder: ((context, constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )));
                      }),
                    ),
                  ),
                  Center(
                    child: Transform.rotate(
                      angle: 1.5,
                      child: const Icon(
                        Icons.local_airport_rounded,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
              const ThickContainer(),
              const Spacer(),
              Text(
                toCode,
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              )
            ],
          ),
          const Gap(3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  fromName,
                  style: Styles.headLineStyle4.copyWith(color: Colors.white),
                ),
              ),
              Text(
                flyingTime,
                style: Styles.headLineStyle4.copyWith(color: Colors.white),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  toName,
                  textAlign: TextAlign.end,
                  style: Styles.headLineStyle4.copyWith(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
