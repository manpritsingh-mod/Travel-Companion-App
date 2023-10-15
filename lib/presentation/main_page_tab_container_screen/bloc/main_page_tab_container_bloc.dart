import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderunsplashu_item_model.dart';
import 'package:travel_companion_app/presentation/main_page_tab_container_screen/models/main_page_tab_container_model.dart';
part 'main_page_tab_container_event.dart';
part 'main_page_tab_container_state.dart';

/// A bloc that manages the state of a MainPageTabContainer according to the event that is dispatched to it.
class MainPageTabContainerBloc
    extends Bloc<MainPageTabContainerEvent, MainPageTabContainerState> {
  MainPageTabContainerBloc(MainPageTabContainerState initialState)
      : super(initialState) {
    on<MainPageTabContainerInitialEvent>(_onInitialize);
  }

  List<SliderunsplashuItemModel> fillSliderunsplashuItemList() {
    return List.generate(1, (index) => SliderunsplashuItemModel());
  }

  _onInitialize(
    MainPageTabContainerInitialEvent event,
    Emitter<MainPageTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        mainPageTabContainerModelObj:
            state.mainPageTabContainerModelObj?.copyWith(
      sliderunsplashuItemList: fillSliderunsplashuItemList(),
    )));
  }
}
