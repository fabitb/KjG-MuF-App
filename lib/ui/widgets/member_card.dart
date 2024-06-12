import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';

class MemberCard extends StatelessWidget {
  final String name;
  final String memberId;
  final String ebene;
  final String unterebene;

  const MemberCard({
    super.key,
    required this.name,
    required this.memberId,
    required this.ebene,
    required this.unterebene,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8 / 5,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          final textStyleNormal = DefaultTextStyle.of(context).style.copyWith(
                fontSize: 0.07 * height,
              );

          final textShrinkingFactor = min(1, (1 / (name.length / 19)));

          final textStyleBold = textStyleNormal.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 0.1 * height * textShrinkingFactor,
          );

          return FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: _memberCardFront(
              context,
              width,
              height,
              textStyleNormal,
              textStyleBold,
            ),
            back: _memberCardBack(context, width, height),
          );
        },
      ),
    );
  }

  Widget _memberCardFront(
    BuildContext context,
    double width,
    double height,
    TextStyle textStyleNormal,
    TextStyle textStyleBold,
  ) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Stack(
        children: [
          Container(
            color: KjGColors.kjgLightBlue,
          ),
          Positioned(
            top: 0,
            right: -0.4 * width,
            height: 0.7 * height,
            child: Transform.flip(
              flipY: true,
              child: Image.asset(
                "assets/elements/element_5.png",
                fit: BoxFit.fitHeight,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: width / 20,
            bottom: width / 20,
            height: height / 7,
            child: Image.asset(
              "assets/kjg-wortmarke.png",
              fit: BoxFit.fitHeight,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: width / 20,
            top: width / 20,
            width: width / 5,
            height: width / 5,
            child: Image.asset(
              "assets/icon_seelenbohrer.png",
              fit: BoxFit.fitHeight,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 0.37 * width,
            top: 0.05 * height,
            child: Text(
              name,
              style: textStyleBold,
            ),
          ),
          Positioned(
            right: 0.05 * width,
            top: 0.2 * height,
            child: RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                text: "$memberId\n",
                style: textStyleNormal,
                children: [
                  TextSpan(
                    text: "$ebene\n",
                    style: textStyleNormal,
                  ),
                  TextSpan(
                    text: "$unterebene\n",
                    style: textStyleNormal,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _memberCardBack(BuildContext context, double width, double height) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Stack(
        children: [
          Container(
            color: KjGColors.kjgDarkBlue,
          ),
          Positioned(
            left: 0.5 * width,
            bottom: 0.1 * height,
            width: 0.8 * width,
            child: Image.asset(
              "assets/icon_seelenbohrer.png",
              fit: BoxFit.fitHeight,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
