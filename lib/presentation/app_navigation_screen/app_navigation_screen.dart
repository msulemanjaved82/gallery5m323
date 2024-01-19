import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Thirteen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.androidLargeThirteenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Twenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeTwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeFiveScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
