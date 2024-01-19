import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AndroidLargeThirteenPage extends StatelessWidget {
  const AndroidLargeThirteenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.outlinePrimary,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildMainStack(context),
                          SizedBox(height: 10.v),
                          SizedBox(
                              height: 455.v,
                              width: 301.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: 25.adaptSize,
                                            width: 25.adaptSize,
                                            margin:
                                                EdgeInsets.only(right: 17.h),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: appTheme.whiteA70002,
                                                    width: 1.h)))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildFirstRow(context),
                                              SizedBox(height: 25.v),
                                              _buildSecondRow(context)
                                            ]))
                                  ]))
                        ]))))));
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
        height: 174.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 29.v),
              child: _buildThumbsUpStack(context,
                  image1: ImageConstant.imgThumbsUpGray200,
                  image2: ImageConstant.imgThumbsUpGray200)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
                  decoration: AppDecoration.outlineWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 11.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(left: 41.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: 36.v,
                                          width: 250.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapTxtSAKABooksLibrary(
                                                              context);
                                                        },
                                                        child: Text(
                                                            "SAKA Books Library",
                                                            style: theme
                                                                .textTheme
                                                                .headlineLarge))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "SAKA Books Library",
                                                        style: theme.textTheme
                                                            .headlineLarge))
                                              ])),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.h,
                                              top: 3.v,
                                              bottom: 7.v),
                                          child: _buildThumbsUpStack(context,
                                              image1: ImageConstant
                                                  .imgRewindGray200,
                                              image2: ImageConstant
                                                  .imgRewindGray200))
                                    ]))),
                        SizedBox(height: 50.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h, right: 66.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text("English",
                                          style:
                                              theme.textTheme.headlineLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text("Urdu",
                                          style: CustomTextStyles
                                              .headlineLargeDeeporange5001))
                                ])),
                        SizedBox(height: 4.v),
                        SizedBox(width: 106.h, child: Divider(indent: 18.h))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 7.v,
                        width: 356.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLine8,
                              height: 7.v,
                              width: 356.h,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgLine8,
                              height: 7.v,
                              width: 356.h,
                              alignment: Alignment.center)
                        ])),
                    SizedBox(height: 5.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                          height: 88.v,
                          child: VerticalDivider(width: 1.h, thickness: 1.v)),
                      SizedBox(
                          height: 88.v,
                          child: VerticalDivider(width: 1.h, thickness: 1.v))
                    ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFirstRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgFirst1,
          height: 202.v,
          width: 134.h,
          margin: EdgeInsets.only(bottom: 1.v)),
      CustomImageView(
          imagePath: ImageConstant.imgFifth1, height: 203.v, width: 132.h)
    ]);
  }

  /// Section Widget
  Widget _buildSecondRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFourth1, height: 203.v, width: 134.h),
          CustomImageView(
              imagePath: ImageConstant.imgSecond1, height: 202.v, width: 133.h)
        ]));
  }

  /// Common widget
  Widget _buildThumbsUpStack(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return SizedBox(
        height: 25.adaptSize,
        width: 25.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: image1,
              height: 25.adaptSize,
              width: 25.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: image2,
              height: 25.adaptSize,
              width: 25.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the androidLargeEightScreen when the action is triggered.
  onTapTxtSAKABooksLibrary(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeEightScreen);
  }
}
