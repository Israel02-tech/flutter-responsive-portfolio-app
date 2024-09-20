import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/View/components/drawer.dart';
import 'package:responsive_portfolio_app/View/components/profile_and_intro.dart';

import '../Responsiveness/responsive.dart';
import '../Utils/colors.dart';
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
            child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ProfileAndIntro(),
                ],
              ),
            ),
          ],
        )));
  }
}
