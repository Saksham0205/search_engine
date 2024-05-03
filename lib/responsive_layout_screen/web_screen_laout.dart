import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_engine/colors.dart';
import 'package:search_engine/widgets/search.dart';
import 'package:search_engine/widgets/translation_button.dart';
import 'package:search_engine/widgets/web/web_footer.dart';

import '../widgets/web/search_buttons.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Gmail",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: primaryColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Images",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: primaryColor),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/more-apps.svg",
                color: primaryColor,
              )),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
            child: MaterialButton(
              onPressed: () {},
              child: const Text("Sign in", style: TextStyle(color: Colors.white)),
              color: const Color(0xff1A73EB),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
              
            ),
            const Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(),
                    SizedBox(height: 20,),
                    SearchButtons(),
                    SizedBox(height: 20,),
                    TranslationButton(),
                  ],
                ),
                WebFooter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
