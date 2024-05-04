import 'package:flutter/material.dart';
import 'package:search_engine/colors.dart';
import 'package:search_engine/widgets/search_header.dart';

import '../widgets/search_tab.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SearchHeadeer(),
      SizedBox(height: 10,),


    ],
  ),
),

    );
  }
}
