import 'package:booktickets/Utils/size_config.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key , required this.firstTab , required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal! * 10),
          color: const Color(0xFFF4F6FD)),
      child: Row(children: [
        /**
        * Airline Ticket
        */
        Container(
          width: SizeConfig.safeBlockHorizontal! * 44,
          padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockHorizontal! * 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(SizeConfig.safeBlockHorizontal! * 10)),
              color: Colors.white),
          child: Center(child: Text(firstTab)),
        ),

        /**
        * Hotels
        */
        Container(
          width: SizeConfig.safeBlockHorizontal! * 44,
          padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockHorizontal! * 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(SizeConfig.safeBlockHorizontal! * 10)),
              color: Colors.transparent),
          child:Center(child: Text(secondTab)),
        ),
      ]),
    );
  }
}
