import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/Responsiveness/responsive.dart';

class ProfileAndIntro extends StatelessWidget {
  const ProfileAndIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Responsive.isMobile(context)
                  // it takes full width in mobile screen but onlyu takes half width in web and desktop
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Image.asset("images/profile-image.png"),
            ),
            SizedBox(
              width: Responsive.isMobile(context)
                  // it takes full width in mobile screen but onlyu takes half width in web and desktop
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Image.asset("images/profile-image.png"),
            ),
          ],
        )
      ],
    );
  }
}
