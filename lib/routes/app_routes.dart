import 'package:flutter/material.dart';
import 'package:travel_companion_app/presentation/second_screen/second_screen.dart';
import 'package:travel_companion_app/presentation/start_screen/start_screen.dart';
import 'package:travel_companion_app/presentation/third_screen/third_screen.dart';
import 'package:travel_companion_app/presentation/fourth_screen/fourth_screen.dart';
import 'package:travel_companion_app/presentation/five_screen/five_screen.dart';
import 'package:travel_companion_app/presentation/main_page_tab_container_screen/main_page_tab_container_screen.dart';
import 'package:travel_companion_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String secondScreen = '/second_screen';

  static const String startScreen = '/start_screen';

  static const String thirdScreen = '/third_screen';

  static const String fourthScreen = '/fourth_screen';

  static const String fiveScreen = '/five_screen';

  static const String mainPage = '/main_page';

  static const String mainPageTabContainerScreen =
      '/main_page_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        secondScreen: SecondScreen.builder,
        startScreen: StartScreen.builder,
        thirdScreen: ThirdScreen.builder,
        fourthScreen: FourthScreen.builder,
        fiveScreen: FiveScreen.builder,
        mainPageTabContainerScreen: MainPageTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SecondScreen.builder
      };
}
