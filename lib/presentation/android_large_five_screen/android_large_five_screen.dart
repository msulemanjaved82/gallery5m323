import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBooksLibrary(context),
              SizedBox(height: 18.v),
              CustomImageView(
                imagePath: ImageConstant.imgMaid1,
                height: 295.v,
                width: 238.h,
                margin: EdgeInsets.only(left: 46.h),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 87.h),
                child: Text(
                  "THE MAID",
                  style: CustomTextStyles.headlineLargePrimary_1,
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  color: theme.colorScheme.primary.withOpacity(1),
                  indent: 19.h,
                  endIndent: 22.h,
                ),
              ),
              SizedBox(height: 14.v),
              _buildSendSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBooksLibrary(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Text(
            "SAKA Books Library",
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 287.v,
        width: 319.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSendPrimary,
              height: 33.v,
              width: 38.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 6.v,
                right: 60.h,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 37.h,
                        right: 45.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignalRedA700,
                            height: 32.v,
                            width: 43.h,
                          ),
                          Spacer(
                            flex: 47,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgDownload,
                            height: 32.v,
                            width: 40.h,
                          ),
                          Spacer(
                            flex: 52,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSend,
                            height: 32.v,
                            width: 42.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Divider(
                      indent: 21.h,
                      endIndent: 15.h,
                    ),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 274.h,
                        margin: EdgeInsets.only(right: 26.h),
                        child: Text(
                          "Language : Urdu              \nAuther : Yasir Abbas\nPublisher :  M Haneef           \nTotal Pages :  300",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineLargeOnError,
                        ),
                      ),
                    ),
                    SizedBox(height: 51.v),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
