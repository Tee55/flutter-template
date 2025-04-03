import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skylines/gen/assets.gen.dart';
import 'package:skylines/routes/app_routes.dart';
import 'package:skylines/src/controllers/language_controller.dart';
import 'package:skylines/src/controllers/theme_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:skylines/theme/app_text_styles.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final LanguageController languageController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Main Menu",
          style: AppTextStyles.heading(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                themeController.themeCode.value == 'dark'
                    ? Icons.dark_mode
                    : Icons.light_mode,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                themeController.themeCode.value == 'dark'
                    ? themeController.setTheme('light')
                    : themeController.setTheme('dark');
              },
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.language,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              _showLanguageDialog(
                context,
                languageController,
              );
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.background.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Game Title",
                style: AppTextStyles.heading(context),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.home);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: AppTextStyles.bodyTextSmall(context),
                ),
                child: Text(
                  AppLocalizations.of(context)!.startGame,
                  style: AppTextStyles.bodyText(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLanguageDialog(
    BuildContext context,
    LanguageController languageController,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select Language'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                languageController.setLanguage('en');
                Navigator.pop(context);
              },
              child: const Text('English'),
            ),
            SimpleDialogOption(
              onPressed: () {
                languageController.setLanguage('zh');
                Navigator.pop(context);
              },
              child: const Text('Chinese'),
            ),
          ],
        );
      },
    );
  }
}
