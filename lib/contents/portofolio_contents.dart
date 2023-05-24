import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';
import 'package:web_portofolio/widgets/portofolio_card.dart';

class PortofolioContents extends StatelessWidget {
  const PortofolioContents({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column (
      children: [
           SizedBox(
          height: screenSize.width / 9,
        ),
        Container(
          padding: EdgeInsets.all(screenSize.width / 30),
          margin: EdgeInsets.symmetric(
            horizontal: screenSize.width / 7,
          ),
          width: screenSize.width,
          color: backgroundColor2.withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Our Portofolio",
                    style: primaryTextStyle.copyWith(
                      fontSize: 64,
                      fontWeight: semiBold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "See all",
                        style: accentTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 50,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: accentColor,
                        size: 24,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.width / 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PortofolioCard(),
                  PortofolioCard(),
                  PortofolioCard(),
                ],
              ),
              SizedBox(
                height: screenSize.width / 50,
              ),
              Text(
                "Portofolio by Serviced",
                style: primaryTextStyle.copyWith(
                  fontSize: 64,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: screenSize.width / 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PortofolioCard(),
                  PortofolioCard(),
                  PortofolioCard(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}