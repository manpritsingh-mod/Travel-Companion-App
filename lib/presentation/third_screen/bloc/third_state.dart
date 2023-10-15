// ignore_for_file: must_be_immutable

part of 'third_bloc.dart';

/// Represents the state of Third in the application.
class ThirdState extends Equatable {
  ThirdState({
    this.emailController,
    this.passwordController,
    this.thirdModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  ThirdModel? thirdModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        thirdModelObj,
      ];
  ThirdState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    ThirdModel? thirdModelObj,
  }) {
    return ThirdState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      thirdModelObj: thirdModelObj ?? this.thirdModelObj,
    );
  }
}
