import '../android_large_eight_screen/widgets/imagestaggered_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';
import 'package:shahid_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:shahid_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class AndroidLargeEightScreen extends StatelessWidget {
  const AndroidLargeEightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildMainStack(context),
                  SizedBox(height: 20.v),
                  _buildImageStaggered(context)
                ])),
            bottomNavigationBar: _buildColumnWithImages(context)));
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
        height: 174.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                  EdgeInsets.only(top: 3.v, bottom: 10.v),
                                  child: _buildThumbsUpStack(context,
                                      image1: ImageConstant.imgThumbsUp,
                                      image2: ImageConstant.imgThumbsUp)),
                              Container(
                                  height: 36.v,
                                  width: 250.h,
                                  margin: EdgeInsets.only(left: 17.h),
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
                                                    style: theme.textTheme
                                                        .headlineLarge))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("SAKA Books Library",
                                                style: theme
                                                    .textTheme.headlineLarge))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 17.h, top: 3.v, bottom: 7.v),
                                  child: _buildThumbsUpStack(context,
                                      image1: ImageConstant.imgRewind,
                                      image2: ImageConstant.imgRewind))
                            ]),
                        SizedBox(height: 50.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h, right: 66.h),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 36.v,
                                      width: 95.h,
                                      margin: EdgeInsets.only(top: 3.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("English",
                                                    style: CustomTextStyles
                                                        .headlineLargePrimary_1)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("English",
                                                    style: theme.textTheme
                                                        .headlineLarge))
                                          ])),
                                  Container(
                                      height: 36.v,
                                      width: 64.h,
                                      margin: EdgeInsets.only(bottom: 3.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("Urdu",
                                                    style: CustomTextStyles
                                                        .headlineLargePrimary_1)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("Urdu",
                                                    style: theme.textTheme
                                                        .headlineLarge))
                                          ]))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        centerTitle: true,
                        title: SizedBox(
                            height: 7.v,
                            width: 356.h,
                            child:
                            Stack(alignment: Alignment.center, children: [
                              AppbarTitleImage(
                                  imagePath: ImageConstant.imgLine13),
                              AppbarTitleImage(
                                  imagePath: ImageConstant.imgLine13)
                            ]))),
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
  Widget _buildImageStaggered(BuildContext context) {
    return StaggeredGridView.countBuilder(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 4,
        crossAxisSpacing: 305.h,
        mainAxisSpacing: 305.h,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(2);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ImagestaggeredItemWidget();
        });
  }

  /// Section Widget
  Widget _buildColumnWithImages(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 26.h, right: 26.h, bottom: 6.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Container(
            decoration: AppDecoration.fillOnErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 46.v,
                            width: 41.h),
                        Padding(
                            padding: EdgeInsets.only(top: 12.v),
                            child: Text("Home",
                                style: CustomTextStyles
                                    .bodyLargeOnPrimaryContainer))
                      ])),
                  Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPlay,
                                height: 50.v,
                                width: 40.h),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 12.v),
                                    child: Text("Auther",
                                        style: theme.textTheme.bodyLarge)))
                          ])),
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 48.v,
                            width: 41.h),
                        Padding(
                            padding: EdgeInsets.only(top: 15.v),
                            child: Text("Subject",
                                style: theme.textTheme.bodyLarge))
                      ]),
                  Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 48.v,
                            width: 41.h),
                        Padding(
                            padding: EdgeInsets.only(top: 14.v),
                            child:
                            Text("Month", style: theme.textTheme.bodyLarge))
                      ]))
                ])));
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

  /// Navigates to the androidLargeElevenScreen when the action is triggered.
  onTapTxtSAKABooksLibrary(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeElevenScreen);
  }
}