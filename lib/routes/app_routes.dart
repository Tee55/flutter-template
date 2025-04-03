import 'package:get/get.dart';
import 'package:skylines/src/screens/home.dart';
import 'package:skylines/src/screens/main_menu.dart';

class AppRoutes {
  static const String main_menu = '/main_menu';
  static const String home = '/home';

  static List<GetPage> pages = [
    GetPage(
      name: main_menu,
      page: () => const MainMenuScreen(),
    ),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
    ),
  ];
}
