import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_engine/colors.dart';

class SearchHeadeer extends StatelessWidget {
  const SearchHeadeer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28, right: 15, top: 4),
            child: Image.asset(
              "assets/images/google-logo.png",
              height: 30,
              width: 92,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: size.width * 0.49,
            decoration: BoxDecoration(
                color: searchColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: searchColor,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                    suffixIcon: Container(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                        SvgPicture.asset(
                          "assets/images/mic-icon.svg",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                                         Icon(Icons.search,color: blueColor,)
                                        ],
                                      ),
                      ),
                    ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none) ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
