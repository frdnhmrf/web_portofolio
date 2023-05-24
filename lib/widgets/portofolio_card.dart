import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';

class PortofolioCard extends StatelessWidget {
  const PortofolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: screenSize.width / 5,
          height: screenSize.width / 8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: primaryColor,
          ),
        ),
        Container(
          width: screenSize.width / 5,
          height: screenSize.width / 16,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: backgroundColor1,
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rantang UI",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
