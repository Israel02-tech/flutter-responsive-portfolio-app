import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/View/components/about_me.dart';
import 'package:responsive_portfolio_app/View/components/contact_form.dart';
import 'package:responsive_portfolio_app/View/components/drawer.dart';
import 'package:responsive_portfolio_app/View/components/footer.dart';
import 'package:responsive_portfolio_app/View/components/profile_and_intro.dart';
import 'package:responsive_portfolio_app/View/components/recent_project.dart';
import 'package:responsive_portfolio_app/View/components/top_skill.dart';

import '../Responsiveness/responsive.dart';
import '../Utils/colors.dart';
import 'components/socials.dart';
import 'components/topbar.dart';

class DeveloperPortFolio extends StatelessWidget {
  DeveloperPortFolio({super.key});
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "Israel Omotayo",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: textColor,
                      size: 35,
                    ),
                  ),
                )
              : TopBar(
                  scrollController: _scrollController,
                ),
        ],
      ),
      drawer: Responsive.isMobile(context)
          ? MyDrawer(scrollController: _scrollController)
          : null,
      body: SafeArea(
        // The below code causes the profileandIntro and the About me not to appear in desktop view because On desktop, larger screen sizes may result in layout overflow, which could prevent the components from rendering correctly. So remove the stack solves the probolem
        // // body: SafeArea(
        //     child: Stack(
        //   children: [
        //     SingleChildScrollView(
        //       child: Column(
        //         children: [
        //           ProfileAndIntro(),
        //         ],
        //       ),
        //     ),
        //   ],
        // )));
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController, // Attach the controller here
              child: Column(
                children: [
                  const ProfileAndIntro(),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 0),
                  const AboutMe(),
                  SizedBox(height: 55),
                  const TopSkills(),
                  SizedBox(height: 55),
                  RecentProject(),
                  SizedBox(height: 55),
                  ContactForm(),
                  SizedBox(height: 55),
                  Footer(),
                  SizedBox(height: 30),
                ],
              ),
            ),
            const SocialIcons(),
          ],
        ),
      ),
    );
  }
}

// Now we link each section or button in the drawer linked to each of the section on the home page 