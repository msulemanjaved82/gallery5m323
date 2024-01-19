import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';
import 'package:shahid_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shahid_s_application1/widgets/app_bar/custom_app_bar.dart';

class AndroidLargeSixteenScreen extends StatelessWidget {
  const AndroidLargeSixteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 55.v,
                  ),
                  decoration: AppDecoration.outlinePrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalWhiteA70001,
                        height: 22.v,
                        width: 23.h,
                        margin: EdgeInsets.only(left: 15.h),
                      ),
                      SizedBox(height: 23.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgDownloadGray5002,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(left: 15.h),
                      ),
                      SizedBox(height: 18.v),
                      Container(
                        height: 40.v,
                        width: 35.h,
                        margin: EdgeInsets.only(left: 13.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 40.v,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  borderRadius: BorderRadius.circular(
                                    20.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "u",
                                style: CustomTextStyles.headlineLargeBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgBookmark,
                        height: 30.v,
                        width: 27.h,
                        margin: EdgeInsets.only(left: 15.h),
                      ),
                      SizedBox(height: 16.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpWhiteA70002,
                        height: 42.v,
                        width: 25.h,
                        margin: EdgeInsets.only(left: 13.h),
                      ),
                      SizedBox(height: 20.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserWhiteA70002,
                        height: 42.v,
                        width: 33.h,
                        margin: EdgeInsets.only(left: 7.h),
                      ),
                      SizedBox(height: 16.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGrid,
                        height: 35.v,
                        width: 32.h,
                        margin: EdgeInsets.only(left: 7.h),
                      ),
                      SizedBox(height: 16.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserWhiteA7000234x40,
                        height: 34.v,
                        width: 40.h,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      SizedBox(height: 14.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgVolume,
                        height: 39.v,
                        width: 50.h,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(right: 27.h),
                  padding: EdgeInsets.symmetric(vertical: 60.v),
                  decoration: AppDecoration.fillGray800.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL401,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAppBar(context),
                      Spacer(),
                      Container(
                        height: 44.v,
                        width: 92.h,
                        margin: EdgeInsets.only(left: 43.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Menu",
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: SizedBox(
                                  width: 92.h,
                                  child: Divider(
                                    color: appTheme.whiteA700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              child: Text(
                                "Favorites",
                                style: CustomTextStyles.headlineLargeBold,
                              ),
                            ),
                            Container(
                              height: 39.v,
                              width: 42.h,
                              margin: EdgeInsets.only(left: 37.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup4,
                                    height: 39.v,
                                    width: 42.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "0",
                                      style:
                                          CustomTextStyles.headlineLargePrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.v),
                              child: Text(
                                "Download",
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                            Container(
                              width: 42.h,
                              margin: EdgeInsets.only(left: 34.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillWhiteA,
                              child: Text(
                                "0",
                                style: CustomTextStyles.headlineLargePrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Padding(
                        padding: EdgeInsets.only(left: 69.h),
                        child: Text(
                          "Update ",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(left: 71.h),
                        child: Text(
                          "Bookmakrks",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Submit Review",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Padding(
                        padding: EdgeInsets.only(left: 71.h),
                        child: Text(
                          "Donate",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Padding(
                        padding: EdgeInsets.only(left: 68.h),
                        child: Text(
                          "More Apps",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 71.h),
                        child: Text(
                          "About Us",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 75.h),
                        child: Text(
                          "Contact ",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 3.v),
                    ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 43.v,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSend,
          margin: EdgeInsets.symmetric(horizontal: 47.h),
        ),
      ],
    );
  }
}
