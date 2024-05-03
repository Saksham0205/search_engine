import "package:flutter/material.dart";
class ResponsiveScreen extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveScreen({super.key, required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.minWidth<=768){
        return mobileScreenLayout;
      }
      return webScreenLayout;
    });
  }
}
