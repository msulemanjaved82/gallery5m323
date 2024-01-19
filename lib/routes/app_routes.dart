import 'package:flutter/material.dart';
import 'package:shahid_s_application1/presentation/android_large_eighteen_screen/android_large_eighteen_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_eight_screen/android_large_eight_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_thirteen_container_screen/android_large_thirteen_container_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_twenty_screen/android_large_twenty_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_nineteen_screen/android_large_nineteen_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_eleven_screen/android_large_eleven_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_fourteen_screen/android_large_fourteen_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_sixteen_screen/android_large_sixteen_screen.dart';
import 'package:shahid_s_application1/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:shahid_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeEighteenScreen =
      '/android_large_eighteen_screen';

  static const String androidLargeEightScreen = '/android_large_eight_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThirteenPage = '/android_large_thirteen_page';

  static const String androidLargeThirteenContainerScreen =
      '/android_large_thirteen_container_screen';

  static const String androidLargeTwentyScreen = '/android_large_twenty_screen';

  static const String androidLargeNineteenScreen =
      '/android_large_nineteen_screen';

  static const String androidLargeElevenScreen = '/android_large_eleven_screen';

  static const String androidLargeFourteenScreen =
      '/android_large_fourteen_screen';

  static const String androidLargeSixteenScreen =
      '/android_large_sixteen_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidLargeEighteenScreen: (context) => AndroidLargeEighteenScreen(),
    androidLargeEightScreen: (context) => AndroidLargeEightScreen(),
    androidLargeTwoScreen: (context) => AndroidLargeTwoScreen(),
    androidLargeThirteenContainerScreen: (context) =>
        AndroidLargeThirteenContainerScreen(),
    androidLargeTwentyScreen: (context) => AndroidLargeTwentyScreen(),
    androidLargeNineteenScreen: (context) => AndroidLargeNineteenScreen(),
    androidLargeElevenScreen: (context) => AndroidLargeElevenScreen(),
    androidLargeFourteenScreen: (context) => AndroidLargeFourteenScreen(),
    androidLargeSixteenScreen: (context) => AndroidLargeSixteenScreen(),
    androidLargeFiveScreen: (context) => AndroidLargeFiveScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
