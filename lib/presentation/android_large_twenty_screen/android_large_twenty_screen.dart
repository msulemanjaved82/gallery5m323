import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';
import 'package:shahid_s_application1/widgets/custom_elevated_button.dart';
import 'package:shahid_s_application1/widgets/custom_text_form_field.dart';

class AndroidLargeTwentyScreen extends StatelessWidget {
  AndroidLargeTwentyScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController loginFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 353.h,
                      margin: EdgeInsets.only(left: 7.h),
                      padding: EdgeInsets.symmetric(vertical: 78.v),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup12,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 77.v),
                          Padding(
                            padding: EdgeInsets.only(left: 125.h),
                            child: Text(
                              "Login",
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          SizedBox(height: 41.v),
                          _buildLoginField(context),
                          SizedBox(height: 25.v),
                          _buildPasswordField(context),
                          SizedBox(height: 36.v),
                          _buildLoginButton(context),
                          SizedBox(height: 25.v),
                          Padding(
                            padding: EdgeInsets.only(left: 79.h),
                            child: Text(
                              "Forget your Passsword?",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.only(left: 116.h),
                      child: Text(
                        "or Continue with ",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildFiftyNine(context),
                    SizedBox(height: 79.v),
                    Padding(
                      padding: EdgeInsets.only(left: 40.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "Don’t have an Account? ",
                              style: CustomTextStyles.bodyMediumPrimary,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "Sign up",
                              style:
                                  CustomTextStyles.bodyMediumBlue700dd.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: CustomTextFormField(
        controller: loginFieldController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      text: "Login",
      margin: EdgeInsets.only(right: 27.h),
    );
  }

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) {
    return CustomElevatedButton(
      width: 161.h,
      text: "Google",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA70002,
    );
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return CustomElevatedButton(
      width: 161.h,
      text: "Facebook",
      margin: EdgeInsets.only(left: 31.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL211,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA70002,
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.h),
      child: Row(
        children: [
          _buildGoogleButton(context),
          _buildFacebookButton(context),
        ],
      ),
    );
  }
}
