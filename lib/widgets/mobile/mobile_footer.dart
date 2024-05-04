import 'package:flutter/material.dart';

import '../footer_text.dart';
class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FooterText(title: 'About',),
            SizedBox(width: 10,),
            FooterText(title: 'Advertising',),
            SizedBox(width: 10,),
            FooterText(title: 'Business',),
            SizedBox(width: 10,),
            FooterText(title: 'How Search Works',),
            SizedBox(width: 10,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FooterText(title: 'Privacy',),
            SizedBox(width: 10,),
            FooterText(title: 'Terms',),
            SizedBox(width: 10,),
            FooterText(title: 'Settings',),
          ],

        ),

      ],
    );
  }
}
