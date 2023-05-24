import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';

class ExperienceContents extends StatelessWidget {
  const ExperienceContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 190),
      height: screenSize.width / 6,
      width: double.infinity,
      color: backgroundColor2.withOpacity(0.3),
    );
  }
}
