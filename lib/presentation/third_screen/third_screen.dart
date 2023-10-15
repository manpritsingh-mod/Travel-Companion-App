import 'bloc/third_bloc.dart';
import 'models/third_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';
import 'package:travel_companion_app/core/utils/validation_functions.dart';
import 'package:travel_companion_app/widgets/custom_elevated_button.dart';
import 'package:travel_companion_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirdBloc>(
        create: (context) => ThirdBloc(ThirdState(thirdModelObj: ThirdModel()))
          ..add(ThirdInitialEvent()),
        child: ThirdScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.cyan400,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgThird),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 250.v),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.h, vertical: 31.v),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder53),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        Text("lbl_user_login".tr,
                                            style:
                                                theme.textTheme.displayMedium),
                                        SizedBox(height: 27.v),
                                        BlocSelector<ThirdBloc, ThirdState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.emailController,
                                            builder:
                                                (context, emailController) {
                                              return CustomTextFormField(
                                                  controller: emailController,
                                                  hintText: "lbl_email".tr,
                                                  textInputType: TextInputType
                                                      .emailAddress,
                                                  prefix: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              21.h,
                                                              17.v,
                                                              23.h,
                                                              17.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmark)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight: 50.v),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidEmail(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid email";
                                                    }
                                                    return null;
                                                  },
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          top: 14.v,
                                                          right: 30.h,
                                                          bottom: 14.v));
                                            }),
                                        SizedBox(height: 15.v),
                                        BlocSelector<ThirdBloc, ThirdState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.passwordController,
                                            builder:
                                                (context, passwordController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      passwordController,
                                                  hintText: "lbl_password".tr,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  prefix: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              21.h,
                                                              14.v,
                                                              23.h,
                                                              16.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLock)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight: 50.v),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid password";
                                                    }
                                                    return null;
                                                  },
                                                  obscureText: true,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          top: 14.v,
                                                          right: 30.h,
                                                          bottom: 14.v));
                                            }),
                                        SizedBox(height: 30.v),
                                        CustomElevatedButton(
                                            text: "lbl_log_in".tr,
                                            buttonStyle: CustomButtonStyles
                                                .outlinePrimary,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumPoppinsWhiteA700,
                                            onTap: () {
                                              onTapLogin(context);
                                            }),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 30.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtSignup(context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 1.v),
                                                          child: Text(
                                                              "lbl_signup".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleMedium))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtForgotpassword(
                                                            context);
                                                      },
                                                      child: Text(
                                                          "lbl_forgot_password"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .titleMedium))
                                                ]))
                                      ]))
                            ]))))));
  }

  /// Navigates to the mainPageTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the mainPageTabContainerScreen.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mainPageTabContainerScreen,
    );
  }

  /// Navigates to the fourthScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the fourthScreen.
  onTapTxtSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.fourthScreen,
    );
  }

  /// Navigates to the fiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the fiveScreen.
  onTapTxtForgotpassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.fiveScreen,
    );
  }
}
