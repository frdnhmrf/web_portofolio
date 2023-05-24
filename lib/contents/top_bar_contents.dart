import 'package:flutter/material.dart';
import 'package:web_portofolio/shared/theme.dart';

class TopBarContents extends StatefulWidget {
  final double? opacity;
  const TopBarContents({super.key, this.opacity});

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 75,
        vertical: 63,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: screenSize.width / 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ferdian",
                style: primaryTextStyle.copyWith(
                  fontSize: 49,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: accentColor,
                ),
                width: 10,
                height: 10,
              ),
            ],
          ),
          SizedBox(width: screenSize.width / 15),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[0] = true : _isHovering[0] = false;
              });
            },
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.02,
                vertical: screenSize.width * 0.005,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _isHovering[0] ? purpleColor : Colors.transparent,
              ),
              child: Text(
                "Home",
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[1] = true : _isHovering[1] = false;
              });
            },
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.02,
                vertical: screenSize.width * 0.005,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _isHovering[1] ? purpleColor : Colors.transparent,
              ),
              child: Text(
                "Service",
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[2] = true : _isHovering[2] = false;
              });
            },
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.02,
                vertical: screenSize.width * 0.005,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _isHovering[2] ? purpleColor : Colors.transparent,
              ),
              child: Text(
                "Portofolio",
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[3] = true : _isHovering[3] = false;
              });
            },
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.02,
                vertical: screenSize.width * 0.005,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _isHovering[3] ? purpleColor : Colors.transparent,
              ),
              child: Text(
                "Contact",
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[4] = true : _isHovering[4] = false;
              });
            },
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.02,
                vertical: screenSize.width * 0.005,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _isHovering[4] ? purpleColor : Colors.transparent,
              ),
              child: Text(
                "About",
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: purpleColor,
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.02,
                vertical: screenSize.width * 0.01,
              ),
            ),
            child: Text(
              "Let's talk",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
