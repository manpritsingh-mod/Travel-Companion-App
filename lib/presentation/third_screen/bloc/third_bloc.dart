import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_companion_app/presentation/third_screen/models/third_model.dart';
part 'third_event.dart';
part 'third_state.dart';

/// A bloc that manages the state of a Third according to the event that is dispatched to it.
class ThirdBloc extends Bloc<ThirdEvent, ThirdState> {
  ThirdBloc(ThirdState initialState) : super(initialState) {
    on<ThirdInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirdInitialEvent event,
    Emitter<ThirdState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
