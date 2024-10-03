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
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              200, // Scroll to this position (in pixels)
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeInOut,
            );
          },
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
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile
                  ? 1050
                  : 1000, // Scroll to this position (in pixels), 1050 for mobile and 1100 for desktop
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeInOut,
            );
          },
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
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 1330 : 1200, // Scroll to this position (in pixels)
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeInOut,
            );
          },
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
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 3835 : 2280, // Scroll to this position (in pixels)
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeInOut,
            );
          },
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
// Each button in the TopBar or drawer is linked to a different section by using different values for the animateTo() method:

// "About" button scrolls to position 200.
// "Skill" button scrolls to position 1050 (mobile) or 1100 (desktop).
// "Project" button scrolls to position 1450 (mobile) or 1750 (desktop).
// "Contact" button scrolls to position 3950 (mobile) or 2750 (desktop).