import 'package:flutter/material.dart';

import '../../Responsiveness/responsive.dart';
import '../../Utils/colors.dart';

class TopBar extends StatelessWidget {
  final ScrollController scrollController;
  const TopBar({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children: topBarData(scrollController, context, isMobile: true),
          )
        : Row(
            children: topBarData(scrollController, context),
          );
  }

  List<Widget> topBarData(
      ScrollController scrollController, BuildContext context,
      {bool isMobile = false}) {
    int scrollDuration = isMobile ? 800 : 500;
    // the main operation is to scroll when we click on any items in topbar
    // wehave perfrom this operation later
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "About",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Skill",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Project",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Contact",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    ];
  }
}
