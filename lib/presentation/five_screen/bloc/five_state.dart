// ignore_for_file: must_be_immutable

part of 'five_bloc.dart';

/// Represents the state of Five in the application.
class FiveState extends Equatable {
  FiveState({
    this.passwordController,
    this.emailController,
    this.phoneController,
    this.fiveModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  FiveModel? fiveModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        emailController,
        phoneController,
        fiveModelObj,
      ];
  FiveState copyWith({
    TextEditingController? passwordController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    FiveModel? fiveModelObj,
  }) {
    return FiveState(
      passwordController: passwordController ?? this.passwordController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      fiveModelObj: fiveModelObj ?? this.fiveModelObj,
    );
  }
}
