import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketMiddleView extends StatelessWidget {
  const TicketMiddleView({super.key});

  @override
  Widget build(BuildContext context) {
    /**Showing ticket view middle segment */
    return Container(
      color: Styles.orangeColor,
      child: Row(
        children: [
          SizedBox(
            height: AppLayout.getHeight(20),
            width: AppLayout.getWidth(10),
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color(0xFFeeedf2),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppLayout.getHeight(10)),
                        bottomRight:
                            Radius.circular(AppLayout.getHeight(10))))),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(AppLayout.getHeight(12)),
            child: LayoutBuilder(
              builder: ((context, constraints) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      (constraints.constrainWidth() / 15).floor(),
                      (index) => const SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white)),
                          )),
                );
              }),
            ),
          )),
          SizedBox(
            height: AppLayout.getHeight(20),
            width: AppLayout.getWidth(10),
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color(0xFFeeedf2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(10)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(10))))),
          ),
        ],
      ),
    );
  }
}
