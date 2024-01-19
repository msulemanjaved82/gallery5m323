import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AndroidLargeFourteenScreen extends StatelessWidget {
  const AndroidLargeFourteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildSakaBooksLibrary(context),
                  SizedBox(height: 14.v),
                  SizedBox(
                      height: 690.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSoul2,
                            height: 228.v,
                            width: 170.h,
                            alignment: Alignment.topCenter),
                        _buildSoulInLife(context),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 233.v),
                                child: SizedBox(
                                    width: double.maxFinite,
                                    child: Divider(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1))))),
                        _buildLanguagesAuthor(context),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 282.v,
                                width: 147.h,
                                margin: EdgeInsets.only(right: 39.h),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onErrorContainer,
                                    border: Border.all(
                                        color: appTheme.lime600, width: 1.h)))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 104.h,
                                margin: EdgeInsets.only(right: 62.h),
                                child: Text(
                                    "Urdu\nEnglish\nSpanish\nHindi\nFrench\nRoman-\nUrdu\nArabic",
                                    maxLines: 8,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.headlineLargeGray100)))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildSakaBooksLibrary(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 24.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 11.v),
          GestureDetector(
              onTap: () {
                onTapTxtSAKABooksLibrary(context);
              },
              child: Text("SAKA Books Library",
                  style: CustomTextStyles.headlineLargeGray20001))
        ]));
  }

  /// Section Widget
  Widget _buildSoulInLife(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 64.h),
                  child: Text("SOUL  IN LIFE",
                      style: CustomTextStyles.displaySmallBlack900)),
              SizedBox(height: 34.v),
              Divider(color: theme.colorScheme.onErrorContainer),
              SizedBox(height: 8.v),
              Container(
                  width: 359.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 59.h, vertical: 22.v),
                  decoration: AppDecoration.fillGray80001,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 29.v),
                        Text("Description",
                            style: CustomTextStyles.headlineLargeDeeporange50)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildLanguagesAuthor(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
            decoration: AppDecoration.fillOnErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 27.v),
                  Container(
                      width: 302.h,
                      margin: EdgeInsets.only(right: 19.h),
                      child: Text(
                          "Languages:\nAuthor:   Khan ahmdani\nPublisher: Arshi goher\nTotal Pages:   70\nCategory:      Novel",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineLarge))
                ])));
  }

  /// Navigates to the androidLargeThirteenContainerScreen when the action is triggered.
  onTapTxtSAKABooksLibrary(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeThirteenContainerScreen);
  }
}
