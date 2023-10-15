import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_companion_app/presentation/start_screen/models/start_model.dart';
part 'start_event.dart';
part 'start_state.dart';

/// A bloc that manages the state of a Start according to the event that is dispatched to it.
class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc(StartState initialState) : super(initialState) {
    on<StartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StartInitialEvent event,
    Emitter<StartState> emit,
  ) async {}
}
