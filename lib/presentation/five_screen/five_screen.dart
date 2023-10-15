import 'bloc/five_bloc.dart';
import 'models/five_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';
import 'package:travel_companion_app/core/utils/validation_functions.dart';
import 'package:travel_companion_app/widgets/custom_elevated_button.dart';
import 'package:travel_companion_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FiveScreen extends StatelessWidget {
  FiveScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FiveBloc>(
        create: (context) => FiveBloc(FiveState(fiveModelObj: FiveModel()))
          ..add(FiveInitialEvent()),
        child: FiveScreen());
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
                        image: AssetImage(ImageConstant.imgFourth),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.h, vertical: 48.v),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder53),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_forgot_password".tr,
                                          style:
                                              theme.textTheme.displayMedium)),
                                  BlocSelector<FiveBloc, FiveState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.passwordController,
                                      builder: (context, passwordController) {
                                        return CustomTextFormField(
                                            controller: passwordController,
                                            margin: EdgeInsets.only(
                                                top: 27.v, right: 12.h),
                                            hintText: "lbl_username".tr,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    26.h, 15.v, 25.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgUser)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            });
                                      }),
                                  BlocSelector<FiveBloc, FiveState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.emailController,
                                      builder: (context, emailController) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            margin: EdgeInsets.only(
                                                top: 15.v, right: 12.h),
                                            hintText: "lbl_email".tr,
                                            hintStyle:
                                                CustomTextStyles.bodyLarge_1,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    26.h, 18.v, 24.h, 18.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            });
                                      }),
                                  BlocSelector<FiveBloc, FiveState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.phoneController,
                                      builder: (context, phoneController) {
                                        return CustomTextFormField(
                                            controller: phoneController,
                                            margin: EdgeInsets.only(
                                                top: 15.v, right: 12.h),
                                            hintText: "lbl_phone".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType: TextInputType.phone,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    26.h, 16.v, 24.h, 15.v),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgCall)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            });
                                      }),
                                  CustomElevatedButton(
                                      height: 43.v,
                                      text: "lbl_forgot_password".tr,
                                      margin: EdgeInsets.only(
                                          top: 30.v, right: 12.h)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h,
                                              top: 30.v,
                                              right: 12.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtSignup(context);
                                                    },
                                                    child: Text(
                                                        "lbl_sign_up2".tr,
                                                        style: theme.textTheme
                                                            .titleMedium)),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtLogin(context);
                                                    },
                                                    child: Text("lbl_login2".tr,
                                                        style: theme.textTheme
                                                            .titleMedium))
                                              ])))
                                ])))))));
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

  /// Navigates to the thirdScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the thirdScreen.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.thirdScreen,
    );
  }
}
