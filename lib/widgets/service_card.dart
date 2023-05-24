import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width / 4,
      height: screenSize.width / 4,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: screenSize.width / 30,
              width: screenSize.width / 30,
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Text(
              'Mobile Development',
              style: primaryTextStyle.copyWith(
                fontSize: 48,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
