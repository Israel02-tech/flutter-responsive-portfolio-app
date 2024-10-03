import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("@ Copyright 2024"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Built with 🍃 by",
              style: TextStyle(),
            ),
            TextButton(
              onPressed: () async {
                final url = Uri.parse(
                    "https://www.linkedin.com/in/israel-omotayo-israel02-tech/");

                if (await canLaunchUrl(url)) {
                  await launchUrl(
                    url,
                    mode: LaunchMode
                        .externalApplication, // Ensures the link opens in a browser
                  );
                } else {
                  print('Could not launch $url');
                }
              },
              child: Text(
                "Israel Omotayo",
              ),
            )
          ],
        ),
      ],
    );
  }
}
