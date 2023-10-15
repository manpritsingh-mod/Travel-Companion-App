import '../models/main_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';

// ignore: must_be_immutable
class MainPageItemWidget extends StatelessWidget {
  MainPageItemWidget(
    this.mainPageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainPageItemModel mainPageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashyvplglwnisy,
            height: 134.v,
            width: 129.h,
            radius: BorderRadius.horizontal(
              left: Radius.circular(20.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainPageItemModelObj.hotelburjalarab!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  mainPageItemModelObj.dubaiuniemirat!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 55.v),
                Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocationsign1,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        mainPageItemModelObj.k999mmummsuqeim!,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                CustomImageView(
                  svgPath: ImageConstant.imgSettings,
                  height: 10.v,
                  width: 95.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
