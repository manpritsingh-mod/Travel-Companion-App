import '../main_page/widgets/main_page_item_widget.dart';
import 'bloc/main_bloc.dart';
import 'models/main_model.dart';
import 'models/main_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatefulWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  MainPageState createState() => MainPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => MainBloc(MainState(
        mainModelObj: MainModel(),
      ))
        ..add(MainInitialEvent()),
      child: MainPage(),
    );
  }
}

class MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 27.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 4.h),
                        child: IntrinsicWidth(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 7.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 9.h,
                                  vertical: 11.v,
                                ),
                                decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 158.v,
                                      width: 236.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashphanrcpbym,
                                            height: 158.v,
                                            width: 236.h,
                                            radius: BorderRadius.circular(
                                              18.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkWhiteA700,
                                            height: 17.v,
                                            width: 16.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLocation,
                                          height: 14.v,
                                          width: 13.h,
                                          margin: EdgeInsets.only(bottom: 3.v),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 9.h),
                                          child: Text(
                                            "lbl_andra_pradesh".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: 16.v,
                                          width: 15.h,
                                          margin: EdgeInsets.only(
                                            left: 58.h,
                                            bottom: 3.v,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 6.h,
                                            bottom: 1.v,
                                          ),
                                          child: Text(
                                            "lbl_4_8".tr,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  bottom: 7.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 8.v,
                                ),
                                decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                      height: 158.v,
                                      width: 235.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashvowifdxogg4,
                                            height: 158.v,
                                            width: 235.h,
                                            radius: BorderRadius.circular(
                                              18.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkWhiteA700,
                                            height: 17.v,
                                            width: 16.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLocation,
                                          height: 14.v,
                                          width: 13.h,
                                          margin: EdgeInsets.only(bottom: 7.v),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 11.h,
                                            bottom: 3.v,
                                          ),
                                          child: Text(
                                            "lbl_sikkim".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: 16.v,
                                          width: 15.h,
                                          margin: EdgeInsets.only(bottom: 6.v),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text(
                                            "lbl_5_0".tr,
                                            textAlign: TextAlign.right,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 15.h,
                                  bottom: 7.v,
                                ),
                                padding: EdgeInsets.all(10.h),
                                decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 158.v,
                                      width: 235.h,
                                      margin: EdgeInsets.only(
                                        left: 1.h,
                                        top: 2.v,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashqrcor33era,
                                            height: 158.v,
                                            width: 235.h,
                                            radius: BorderRadius.circular(
                                              18.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkWhiteA700,
                                            height: 17.v,
                                            width: 16.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 6.h,
                                        top: 15.v,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgLocation,
                                            height: 14.v,
                                            width: 13.h,
                                            margin: EdgeInsets.only(
                                              top: 2.v,
                                              bottom: 5.v,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 11.h),
                                            child: Text(
                                              "lbl_kashmir".tr,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 21.v,
                          right: 39.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_popular_destinations".tr,
                              style:
                                  CustomTextStyles.titleLargePrimaryContainer,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Text(
                                "lbl_view_all".tr,
                                style: CustomTextStyles
                                    .titleSmallRobotoFlexDeeporange500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 25.v,
                          right: 34.h,
                        ),
                        child: BlocSelector<MainBloc, MainState, MainModel?>(
                          selector: (state) => state.mainModelObj,
                          builder: (context, mainModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: 20.v,
                                );
                              },
                              itemCount:
                                  mainModelObj?.mainPageItemList.length ?? 0,
                              itemBuilder: (context, index) {
                                MainPageItemModel model =
                                    mainModelObj?.mainPageItemList[index] ??
                                        MainPageItemModel();
                                return MainPageItemWidget(
                                  model,
                                );
                              },
                            );
                          },
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
    );
  }
}
