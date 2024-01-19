import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';
import 'package:shahid_s_application1/presentation/android_large_thirteen_page/android_large_thirteen_page.dart';
import 'package:shahid_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeThirteenContainerScreen extends StatelessWidget {
  AndroidLargeThirteenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.androidLargeThirteenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeThirteenPage;
      case BottomBarEnum.Auther:
        return "/";
      case BottomBarEnum.Month:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.androidLargeThirteenPage:
        return AndroidLargeThirteenPage();
      default:
        return DefaultWidget();
    }
  }
}
