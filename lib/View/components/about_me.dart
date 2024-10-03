import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/Responsiveness/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 40 : 80,
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              "About Me",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "I'm a passionate Flutter developer. I enjoy building functional, user-friendly applications that solve real-world problems. I enjoy building functional, user-friendly applications that solve real-world problems.\n \nMy projects span various domains, including e-commerce, food delivery, and doctor appointment apps.\n \nThanks for visiting my portfolio. Feel free to explore my projects and reach out if you'd like to connect\n",
            style: TextStyle(
              fontSize: Responsive.isMobile(context) ? 18 : 20,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
