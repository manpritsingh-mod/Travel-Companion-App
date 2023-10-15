// ignore_for_file: must_be_immutable

part of 'fourth_bloc.dart';

/// Represents the state of Fourth in the application.
class FourthState extends Equatable {
  FourthState({
    this.userNameController,
    this.nameController,
    this.emailController,
    this.phoneController,
    this.passwordController,
    this.confirmpasswordController,
    this.fourthModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  FourthModel? fourthModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        nameController,
        emailController,
        phoneController,
        passwordController,
        confirmpasswordController,
        fourthModelObj,
      ];
  FourthState copyWith({
    TextEditingController? userNameController,
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    FourthModel? fourthModelObj,
  }) {
    return FourthState(
      userNameController: userNameController ?? this.userNameController,
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      fourthModelObj: fourthModelObj ?? this.fourthModelObj,
    );
  }
}
