import 'bloc/start_bloc.dart';
import 'models/start_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';
import 'package:travel_companion_app/widgets/custom_elevated_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StartBloc>(
        create: (context) => StartBloc(StartState(startModelObj: StartModel()))
          ..add(StartInitialEvent()),
        child: StartScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<StartBloc, StartState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 37.h, top: 80.v, right: 37.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAsset3travelcompanion,
                        height: 94.v,
                        width: 68.h),
                    SizedBox(height: 5.v),
                    Text("msg_travel_companion".tr,
                        style: CustomTextStyles.displayMediumPTSans),
                    Container(
                        width: 271.h,
                        margin:
                            EdgeInsets.only(left: 41.h, top: 15.v, right: 42.h),
                        child: Text("msg_welcome_to_travel".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmall12)),
                    Spacer(),
                    CustomImageView(
                        svgPath: ImageConstant.imgGroup1,
                        height: 265.v,
                        width: 346.h),
                    SizedBox(height: 94.v),
                    CustomElevatedButton(
                        text: "lbl_let_s_start".tr,
                        buttonStyle: CustomButtonStyles.fillErrorContainer,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumPoppinsWhiteA700Bold,
                        onTap: () {
                          onTapLetsstart(context);
                        }),
                    SizedBox(height: 37.v)
                  ]))));
    });
  }

  /// Navigates to the thirdScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the thirdScreen.
  onTapLetsstart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.thirdScreen,
    );
  }
}
