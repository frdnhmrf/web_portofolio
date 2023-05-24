import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';

class JumbotronContents extends StatelessWidget {
  const JumbotronContents({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Container(
            width: screenSize.width * 0.3,
            height: screenSize.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.width / 10,
            ),
            Text(
              'IT Enthusiast',
              style: secondaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 48,
              ),
            ),
            Text(
              'Ferdian Husnal\nMa’ruf',
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 64,
              ),
            ),
            SizedBox(
              width: screenSize.width / 5,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        )
      ],
    );
  }
}
