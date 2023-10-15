import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/main_page_item_model.dart';
import 'package:travel_companion_app/presentation/main_page/models/main_model.dart';
part 'main_event.dart';
part 'main_state.dart';

/// A bloc that manages the state of a Main according to the event that is dispatched to it.
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(MainState initialState) : super(initialState) {
    on<MainInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MainInitialEvent event,
    Emitter<MainState> emit,
  ) async {
    emit(state.copyWith(
        mainModelObj: state.mainModelObj?.copyWith(
      mainPageItemList: fillMainPageItemList(),
    )));
  }

  List<MainPageItemModel> fillMainPageItemList() {
    return List.generate(7, (index) => MainPageItemModel());
  }
}
