import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_companion_app/presentation/fourth_screen/models/fourth_model.dart';
part 'fourth_event.dart';
part 'fourth_state.dart';

/// A bloc that manages the state of a Fourth according to the event that is dispatched to it.
class FourthBloc extends Bloc<FourthEvent, FourthState> {
  FourthBloc(FourthState initialState) : super(initialState) {
    on<FourthInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FourthInitialEvent event,
    Emitter<FourthState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        phoneController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController()));
  }
}
