import 'package:flutter/material.dart';
import 'package:search_engine/colors.dart';
import 'package:search_engine/widgets/footer_text.dart';
class WebFooter extends StatefulWidget {
  const WebFooter({super.key});

  @override
  State<WebFooter> createState() => _WebFooterState();
}

class _WebFooterState extends State<WebFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

        ),
      ),
    );
  }
}
