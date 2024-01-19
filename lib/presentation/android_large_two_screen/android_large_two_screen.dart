import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 366.h,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildBooksLibrarySection(context),
                  SizedBox(height: 18.v),
                  _buildDownloadsSection(context),
                  SizedBox(height: 29.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImages1,
                      height: 226.v,
                      width: 142.h),
                  SizedBox(height: 32.v),
                  _buildProfileSection(context)
                ])))));
  }

  /// Section Widget
  Widget _buildBooksLibrarySection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 25.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 7.v),
          GestureDetector(
              onTap: () {
                onTapTxtSAKABooksLibrary(context);
              },
              child: Text("SAKA Books Library",
                  style: theme.textTheme.headlineLarge))
        ]));
  }

  /// Section Widget
  Widget _buildDownloadsSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 23.h, right: 19.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v),
        decoration: AppDecoration.fillGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("Downloads",
                  style: CustomTextStyles.headlineLargePrimary_1)),
          Padding(
              padding: EdgeInsets.only(top: 2.v, right: 22.h),
              child: Text("1", style: CustomTextStyles.headlineLargePrimary_1))
        ]));
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return SizedBox(
        height: 346.v,
        width: 359.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 37.h, vertical: 19.v),
                  decoration: AppDecoration.fillOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        Container(
                            width: 238.h,
                            margin: EdgeInsets.only(right: 46.h),
                            child: Text(
                                "Language : Urdu              \nAuther : Shibli Naumani\nPublisher :  Nafees            \nTotal Pages :  230                                               ",
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.headlineLargeWhiteA700))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 78.h, vertical: 14.v),
                  decoration: AppDecoration.fillGray80001,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text("AL-Farooq",
                                style: theme.textTheme.headlineLarge)),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(right: 51.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSignal,
                                      height: 22.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(bottom: 3.v)),
                                  Spacer(flex: 47),
                                  Container(
                                      height: 19.v,
                                      width: 25.h,
                                      margin: EdgeInsets.only(top: 6.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUser,
                                                height: 19.v,
                                                width: 25.h,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUser,
                                                height: 19.v,
                                                width: 25.h,
                                                alignment: Alignment.center)
                                          ])),
                                  Spacer(flex: 52),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSend,
                                      height: 25.v,
                                      width: 22.h,
                                      onTap: () {
                                        onTapImgSend(context);
                                      })
                                ])),
                        SizedBox(height: 10.v)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgLine6,
              height: 12.v,
              width: 293.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 101.v))
        ]));
  }

  /// Navigates to the androidLargeFourteenScreen when the action is triggered.
  onTapTxtSAKABooksLibrary(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeFourteenScreen);
  }

  /// Navigates to the androidLargeFiveScreen when the action is triggered.
  onTapImgSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeFiveScreen);
  }
}
