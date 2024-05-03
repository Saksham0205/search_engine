import 'package:flutter/material.dart';
import 'package:search_engine/colors.dart';

class SearchButtons extends StatefulWidget {
  const SearchButtons({super.key});

  @override
  State<SearchButtons> createState() => _SearchButtonsState();
}

class _SearchButtonsState extends State<SearchButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          elevation: 0,
          color: searchColor,
          onPressed: () {},
          child: Text(
            "Google Search",
            style: TextStyle(color: primaryColor),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        )
      ],
    );
  }
}
