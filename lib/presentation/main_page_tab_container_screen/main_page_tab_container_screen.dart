import '../main_page_tab_container_screen/widgets/sliderunsplashu_item_widget.dart';
import 'bloc/main_page_tab_container_bloc.dart';
import 'models/main_page_tab_container_model.dart';
import 'models/sliderunsplashu_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_companion_app/core/app_export.dart';
import 'package:travel_companion_app/presentation/main_page/main_page.dart';
import 'package:travel_companion_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:travel_companion_app/widgets/app_bar/appbar_image.dart';
import 'package:travel_companion_app/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_companion_app/widgets/custom_outlined_button.dart';
import 'package:travel_companion_app/widgets/custom_search_view.dart';

class MainPageTabContainerScreen extends StatefulWidget {
  const MainPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MainPageTabContainerScreenState createState() =>
      MainPageTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MainPageTabContainerBloc>(
      create: (context) => MainPageTabContainerBloc(MainPageTabContainerState(
        mainPageTabContainerModelObj: MainPageTabContainerModel(),
      ))
        ..add(MainPageTabContainerInitialEvent()),
      child: MainPageTabContainerScreen(),
    );
  }
}

class MainPageTabContainerScreenState extends State<MainPageTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 53.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 18.v,
              bottom: 18.v,
            ),
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse106,
              margin: EdgeInsets.symmetric(
                horizontal: 39.h,
                vertical: 6.v,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocSelector<MainPageTabContainerBloc,
                    MainPageTabContainerState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      margin: EdgeInsets.only(
                        left: 19.h,
                        right: 35.h,
                      ),
                      controller: searchController,
                      hintText: "lbl_search".tr,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 17.v, 25.h, 17.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearch,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 58.v,
                      ),
                    );
                  },
                ),
                Container(
                  width: 371.h,
                  margin: EdgeInsets.only(
                    left: 19.h,
                    top: 22.v,
                    right: 40.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_hi_abir".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        TextSpan(
                          text: "msg_where_should_we".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 14.v,
                    right: 34.h,
                  ),
                  child: BlocBuilder<MainPageTabContainerBloc,
                      MainPageTabContainerState>(
                    builder: (context, state) {
                      return CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 219.v,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (
                            index,
                            reason,
                          ) {
                            state.sliderIndex = index;
                          },
                        ),
                        itemCount: state.mainPageTabContainerModelObj
                                ?.sliderunsplashuItemList.length ??
                            0,
                        itemBuilder: (context, index, realIndex) {
                          SliderunsplashuItemModel model = state
                                  .mainPageTabContainerModelObj
                                  ?.sliderunsplashuItemList[index] ??
                              SliderunsplashuItemModel();
                          return SliderunsplashuItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.center,
                  child: BlocBuilder<MainPageTabContainerBloc,
                      MainPageTabContainerState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 18.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: state.sliderIndex,
                          count: state.mainPageTabContainerModelObj
                                  ?.sliderunsplashuItemList.length ??
                              0,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            activeDotColor: appTheme.deepOrange500,
                            dotHeight: 18.v,
                            dotWidth: 18.h,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 12.v,
                  ),
                  child: Text(
                    "lbl_category".tr,
                    style: CustomTextStyles.titleLargePrimaryContainerBold,
                  ),
                ),
                Container(
                  height: 44.v,
                  width: 411.h,
                  margin: EdgeInsets.only(
                    left: 19.h,
                    top: 19.v,
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    isScrollable: true,
                    labelColor: appTheme.whiteA700,
                    unselectedLabelColor: appTheme.blueGray500,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgFire,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: Text(
                                "lbl_popular".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: CustomOutlinedButton(
                          width: 89.h,
                          text: "lbl_lake".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 10.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgChipsIcon,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: CustomOutlinedButton(
                          width: 126.h,
                          text: "lbl_mountain".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 10.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgChipsIconBlueGray500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1461.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      MainPage.builder(context),
                      MainPage.builder(context),
                      MainPage.builder(context),
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
