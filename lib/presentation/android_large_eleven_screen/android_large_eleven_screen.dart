import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AndroidLargeElevenScreen extends StatelessWidget {
  const AndroidLargeElevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  _buildSakaLibrary(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 168.v,
                      width: 84.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 181.v, right: 65.h),
                      onTap: () {
                        onTapImgVector(context);
                      }),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 14.h, right: 29.h, bottom: 5.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorWhiteA70002,
                                    height: 88.v,
                                    width: 116.h,
                                    onTap: () {
                                      onTapImgVector1(context);
                                    }),
                                SizedBox(height: 19.v),
                                _buildHomeRow(context),
                                SizedBox(height: 32.v),
                                _buildVectorRow(context),
                                SizedBox(height: 18.v),
                                _buildBooksRow(context),
                                SizedBox(height: 29.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCalculator,
                                    height: 75.v,
                                    width: 100.h,
                                    alignment: Alignment.center,
                                    onTap: () {
                                      onTapImgCalculator(context);
                                    }),
                                SizedBox(height: 19.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 102.h),
                                        child: Text("Manu",
                                            style:
                                                theme.textTheme.displayMedium)))
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildSakaLibrary(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 72.v),
            decoration: AppDecoration.fillGray90001,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 18.v),
                  Text("SAKA Library",
                      style: CustomTextStyles.displayMediumBold)
                ])));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 7.h, right: 11.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Home", style: theme.textTheme.displayMedium),
                  Text("Subject", style: theme.textTheme.displayMedium)
                ])));
  }

  /// Section Widget
  Widget _buildVectorRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA7000286x114,
                  height: 86.v,
                  width: 114.h,
                  margin: EdgeInsets.only(top: 13.v),
                  onTap: () {
                    onTapImgVector2(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA7000281x114,
                  height: 81.v,
                  width: 114.h,
                  margin: EdgeInsets.only(bottom: 18.v))
            ]));
  }

  /// Section Widget
  Widget _buildBooksRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Books",
          textAlign: TextAlign.center, style: theme.textTheme.displayMedium),
      Text("Download", style: theme.textTheme.displayMedium)
    ]);
  }

  /// Navigates to the androidLargeThirteenContainerScreen when the action is triggered.
  onTapImgVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeThirteenContainerScreen);
  }

  /// Navigates to the androidLargeEightScreen when the action is triggered.
  onTapImgVector1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeEightScreen);
  }

  /// Navigates to the androidLargeFourteenScreen when the action is triggered.
  onTapImgVector2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeFourteenScreen);
  }

  /// Navigates to the androidLargeSixteenScreen when the action is triggered.
  onTapImgCalculator(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeSixteenScreen);
  }
}
