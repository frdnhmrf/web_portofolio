import 'package:flutter/material.dart';
import 'package:web_portofolio/contents/portofolio_contents.dart';
import 'package:web_portofolio/contents/experience_contents.dart';
import 'package:web_portofolio/contents/jumbotron_contents.dart';
import 'package:web_portofolio/contents/service_contents.dart';
import 'package:web_portofolio/contents/top_bar_contents.dart';
import 'package:web_portofolio/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 300),
        child: const TopBarContents(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width / 7,
            ),
            child: const JumbotronContents(),
          ),
          const ExperienceContents(),
          const ServiceContents(),
          const PortofolioContents(),
          SizedBox(
            height: screenSize.width / 9,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width / 7,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Want to make awesome and impactful Product?",
                          style: primaryTextStyle.copyWith(
                            fontSize: 64,
                            fontWeight: semiBold,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: screenSize.width / 12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Contact us",
                                    style: accentTextStyle.copyWith(
                                      fontSize: 24,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenSize.width / 150,
                                  ),
                                  Divider(
                                    thickness: 3,
                                    color: accentColor,
                                  )
                                ],
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
                  ),
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: screenSize.width / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 190),
            padding: EdgeInsets.symmetric(horizontal: screenSize.width / 7),
            height: screenSize.width / 6,
            width: double.infinity,
            color: backgroundColor2.withOpacity(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Follow us on social media",
                  style: primaryTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: screenSize.width / 150,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 40,
                      color: primaryColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.facebook,
                      color: primaryColor,
                      size: 40,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
