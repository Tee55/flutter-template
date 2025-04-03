import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skylines/firebase_options.dart';
import 'package:skylines/src/controllers/language_controller.dart';
import 'package:skylines/src/controllers/theme_controller.dart';
import 'package:skylines/theme/app_theme.dart';
import 'routes/app_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Get.put(ThemeController());
  Get.put(LanguageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Obx(() {
      return GetMaterialApp(
        title: 'Skylines',

        // Theme
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.themeCode.value == 'dark'
            ? ThemeMode.dark
            : ThemeMode.light,

        // Routing
        initialRoute: AppRoutes.main_menu,
        getPages: AppRoutes.pages,

        // Localization
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'), // English
          const Locale('zh'), // Chinese
        ],
        fallbackLocale: const Locale('en'),
      );
    });
  }
}
