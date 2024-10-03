import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/Utils/colors.dart';
import 'package:responsive_portfolio_app/View/components/topbar.dart';

class MyDrawer extends StatelessWidget {
  final ScrollController scrollController;
  const MyDrawer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6, // Sets the drawer to be 60% of the screen width
      child: Drawer(
        // Using Drawer widget
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: textColor,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: TopBar(
                  scrollController: scrollController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
