import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skylines/theme/app_theme.dart';

class ThemeController extends GetxController {
  var themeCode = 'light'.obs;

  @override
  void onInit() {
    _loadTheme();
    super.onInit();
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    themeCode.value = prefs.getString('themeCode') ?? 'light';
    _applyTheme(themeCode.value);
  }

  void setTheme(String newThemeCode) async {
    themeCode.value = newThemeCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeCode', newThemeCode);

    _applyTheme(newThemeCode);
  }

  void _applyTheme(String themeCode) {
    switch (themeCode) {
      case 'dark':
        Get.changeTheme(AppTheme.darkTheme);
        break;
      case 'light':
        Get.changeTheme(AppTheme.lightTheme);
        break;
      default:
        Get.changeTheme(AppTheme.lightTheme);
        break;
    }
  }
}
