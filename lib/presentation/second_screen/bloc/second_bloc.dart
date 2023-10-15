import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_companion_app/presentation/second_screen/models/second_model.dart';
part 'second_event.dart';
part 'second_state.dart';

/// A bloc that manages the state of a Second according to the event that is dispatched to it.
class SecondBloc extends Bloc<SecondEvent, SecondState> {
  SecondBloc(SecondState initialState) : super(initialState) {
    on<SecondInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SecondInitialEvent event,
    Emitter<SecondState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.startScreen,
      );
    });
  }
}
