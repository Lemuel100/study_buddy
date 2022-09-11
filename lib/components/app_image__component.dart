import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String imageUrl;
  final int flex;
  const AppImage({super.key, required this.imageUrl, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ));
  }
}
