import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  var selectedLanguage = 'en'.obs;

  @override
  void onInit() {
    _loadLanguage();
    super.onInit();
  }

  void _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    selectedLanguage.value = prefs.getString('selectedLanguage') ?? 'en';
    Get.updateLocale(
      Locale(
        selectedLanguage.value,
      ),
    );
  }

  void setLanguage(String languageCode) {
    selectedLanguage.value = languageCode;
    Get.updateLocale(
      Locale(
        languageCode,
      ),
    );
  }
}
