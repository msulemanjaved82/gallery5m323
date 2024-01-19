import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ImagestaggeredItemWidget extends StatelessWidget {
  const ImagestaggeredItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgSecond1,
      height: 202.v,
      width: 134.h,
    );
  }
}
