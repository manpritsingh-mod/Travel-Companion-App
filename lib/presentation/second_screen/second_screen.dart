import 'bloc/second_bloc.dart';
import 'models/second_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SecondBloc>(
        create: (context) =>
            SecondBloc(SecondState(secondModelObj: SecondModel()))
              ..add(SecondInitialEvent()),
        child: SecondScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SecondBloc, SecondState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.cyan400,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgSecond),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(bottom: 10.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgAsset2travelcompanion,
                          height: 304.v,
                          width: 202.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only())))));
    });
  }
}
