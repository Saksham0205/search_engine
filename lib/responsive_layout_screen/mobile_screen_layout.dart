import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:search_engine/widgets/mobile/mobile_footer.dart';

import '../colors.dart';
import '../widgets/search.dart';
import '../widgets/translation_button.dart';
import '../widgets/web/search_buttons.dart';
import '../widgets/web/web_footer.dart';
class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {  },),
        title: SizedBox(
          width: size.width *0.40,
          child: DefaultTabController(length: 2,child: TabBar(
            labelColor: blueColor,
            indicatorColor: blueColor,
            tabs: [
             Tab(
               text: "ALL",
             ) ,
              Tab(
                text: "IMAGES",
              ),
            ],
          ),
          ),
        ),
        actions: [
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
                MobileFooter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

