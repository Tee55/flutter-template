import 'package:flutter/material.dart';
import 'package:skylines/theme/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Text(
          "Game Started!",
          style: AppTextStyles.heading(context),
        ),
      ),
    );
  }
}
