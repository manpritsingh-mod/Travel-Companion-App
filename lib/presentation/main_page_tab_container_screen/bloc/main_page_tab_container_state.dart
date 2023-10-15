// ignore_for_file: must_be_immutable

part of 'main_page_tab_container_bloc.dart';

/// Represents the state of MainPageTabContainer in the application.
class MainPageTabContainerState extends Equatable {
  MainPageTabContainerState({
    this.searchController,
    this.sliderIndex = 0,
    this.mainPageTabContainerModelObj,
  });

  TextEditingController? searchController;

  MainPageTabContainerModel? mainPageTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        mainPageTabContainerModelObj,
      ];
  MainPageTabContainerState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    MainPageTabContainerModel? mainPageTabContainerModelObj,
  }) {
    return MainPageTabContainerState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      mainPageTabContainerModelObj:
          mainPageTabContainerModelObj ?? this.mainPageTabContainerModelObj,
    );
  }
}
