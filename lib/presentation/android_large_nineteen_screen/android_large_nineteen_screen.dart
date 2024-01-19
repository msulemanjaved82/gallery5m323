import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

class AndroidLargeNineteenScreen extends StatelessWidget {
  const AndroidLargeNineteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 80.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBookkeeping21,
                height: 300.v,
                width: 360.h,
              ),
              SizedBox(height: 19.v),
              Container(
                width: 281.h,
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 38.h,
                ),
                child: Text(
                  "Welcome To SAKA Library",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.displayMediumBold,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
