import 'bloc/fourth_bloc.dart';
import 'models/fourth_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';
import 'package:travel_companion_app/core/utils/validation_functions.dart';
import 'package:travel_companion_app/widgets/custom_elevated_button.dart';
import 'package:travel_companion_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FourthScreen extends StatelessWidget {
  FourthScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FourthBloc>(
        create: (context) =>
            FourthBloc(FourthState(fourthModelObj: FourthModel()))
              ..add(FourthInitialEvent()),
        child: FourthScreen());
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
                                horizontal: 40.h, vertical: 30.v),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder53),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(right: 71.h),
                                      child: Text("lbl_sign_up2".tr,
                                          style:
                                              theme.textTheme.displayMedium)),
                                  SizedBox(height: 27.v),
                                  BlocSelector<FourthBloc, FourthState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.userNameController,
                                      builder: (context, userNameController) {
                                        return CustomTextFormField(
                                            controller: userNameController,
                                            hintText: "lbl_username".tr,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    28.h, 15.v, 23.h, 14.v),
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
                                  SizedBox(height: 15.v),
                                  BlocSelector<FourthBloc, FourthState,
                                          TextEditingController?>(
                                      selector: (state) => state.nameController,
                                      builder: (context, nameController) {
                                        return CustomTextFormField(
                                            controller: nameController,
                                            hintText: "lbl_name".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargePTSansCaption,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    28.h, 15.v, 24.h, 15.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgOffer)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            });
                                      }),
                                  SizedBox(height: 15.v),
                                  BlocSelector<FourthBloc, FourthState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.emailController,
                                      builder: (context, emailController) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText: "lbl_email".tr,
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
                                  SizedBox(height: 15.v),
                                  BlocSelector<FourthBloc, FourthState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.phoneController,
                                      builder: (context, phoneController) {
                                        return CustomTextFormField(
                                            controller: phoneController,
                                            hintText: "lbl_phone".tr,
                                            textInputType: TextInputType.phone,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    28.h, 16.v, 23.h, 15.v),
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
                                  SizedBox(height: 15.v),
                                  BlocSelector<FourthBloc, FourthState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.passwordController,
                                      builder: (context, passwordController) {
                                        return CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "lbl_password".tr,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    28.h, 16.v, 23.h, 16.v),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgLock)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            obscureText: true);
                                      }),
                                  SizedBox(height: 15.v),
                                  BlocSelector<FourthBloc, FourthState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.confirmpasswordController,
                                      builder:
                                          (context, confirmpasswordController) {
                                        return CustomTextFormField(
                                            controller:
                                                confirmpasswordController,
                                            hintText: "msg_confirm_password".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    28.h, 16.v, 23.h, 16.v),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgLock)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            obscureText: true);
                                      }),
                                  SizedBox(height: 30.v),
                                  CustomElevatedButton(
                                      height: 43.v,
                                      text: "lbl_sign_up2".tr,
                                      onTap: () {
                                        onTapSignup(context);
                                      }),
                                  SizedBox(height: 30.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtLogin(context);
                                      },
                                      child: Text("lbl_login2".tr,
                                          style:
                                              CustomTextStyles.titleMediumBold))
                                ])))))));
  }

  /// Navigates to the thirdScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the thirdScreen.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.thirdScreen,
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
