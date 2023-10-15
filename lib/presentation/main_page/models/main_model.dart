// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'main_page_item_model.dart';

/// This class defines the variables used in the [main_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MainModel extends Equatable {
  MainModel({this.mainPageItemList = const []}) {}

  List<MainPageItemModel> mainPageItemList;

  MainModel copyWith({List<MainPageItemModel>? mainPageItemList}) {
    return MainModel(
      mainPageItemList: mainPageItemList ?? this.mainPageItemList,
    );
  }

  @override
  List<Object?> get props => [mainPageItemList];
}
