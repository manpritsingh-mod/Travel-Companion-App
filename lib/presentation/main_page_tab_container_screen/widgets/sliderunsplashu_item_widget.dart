import '../models/sliderunsplashu_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_companion_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderunsplashuItemWidget extends StatelessWidget {
  SliderunsplashuItemWidget(
    this.sliderunsplashuItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderunsplashuItemModel sliderunsplashuItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgUnsplashuwqp2mh5yji,
      height: 219.v,
      width: 376.h,
      radius: BorderRadius.circular(
        42.h,
      ),
    );
  }
}
