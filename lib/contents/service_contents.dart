import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';
import 'package:web_portofolio/widgets/service_card.dart';

class ServiceContents extends StatelessWidget {
  const ServiceContents({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.width / 9,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: screenSize.width / 7,
              ),
              SizedBox(
                width: screenSize.width / 4,
                height: screenSize.width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Service',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 48,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'I Provide Wide Range of Digital Service',
                      style: primaryTextStyle.copyWith(
                        fontSize: 56,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 12,
              ),
              const ServiceCard(),
              SizedBox(
                width: screenSize.width / 12,
              ),
              const ServiceCard(),
              SizedBox(
                width: screenSize.width / 12,
              ),
              const ServiceCard(),
              SizedBox(
                width: screenSize.width / 7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
