import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/Responsiveness/responsive.dart';
import 'package:responsive_portfolio_app/Utils/colors.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "My Top Skills",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 10
                : Responsive.heightOfScreen(context) / 4,
          ),
          child: const Wrap(
            children: [
              SkillCard(
                url: "images/flutter.png",
              ),
              SkillCard(
                url: "images/Dart.png",
              ),
              SkillCard(
                url: "images/Firebase.png",
              ),
              SkillCard(
                url: "images/API.png",
              ),
              SkillCard(
                url: "images/Figma-logo.png",
              ),
              SkillCard(
                url: "images/GitHub.png",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: shadowColor,
              blurRadius: 6,
              spreadRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(20),
            child: Image.asset(url),
          ),
        ),
      ),
    );
  }
}
