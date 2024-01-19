import 'package:flutter/material.dart';
import 'package:shahid_s_application1/core/app_export.dart';
import 'package:shahid_s_application1/widgets/custom_elevated_button.dart';
import 'package:shahid_s_application1/widgets/custom_outlined_button.dart';
import 'package:shahid_s_application1/widgets/custom_text_form_field.dart';

class AndroidLargeEighteenScreen extends StatelessWidget {
  AndroidLargeEighteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController signUpFormController = TextEditingController();

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
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
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 93.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup12,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 40.v),
                          Text(
                            "Sign up",
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 40.v),
                          _buildSignUpForm(context),
                          SizedBox(height: 24.v),
                          _buildNameField(context),
                          SizedBox(height: 24.v),
                          _buildEmailField(context),
                          SizedBox(height: 24.v),
                          _buildPasswordField(context),
                          SizedBox(height: 43.v),
                          _buildSignUpButton(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "OR",
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildContinueWithGoogleButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: CustomTextFormField(
        controller: signUpFormController,
        hintText: "Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: CustomTextFormField(
        controller: nameFieldController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: CustomTextFormField(
        controller: emailFieldController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Check Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      text: "Sign up",
      margin: EdgeInsets.only(right: 9.h),
    );
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Continue with Google",
      margin: EdgeInsets.only(
        left: 9.h,
        right: 18.h,
        bottom: 15.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 7.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
          height: 44.adaptSize,
          width: 44.adaptSize,
        ),
      ),
    );
  }
}
