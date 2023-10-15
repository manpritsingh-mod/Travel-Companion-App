// ignore_for_file: must_be_immutable

part of 'second_bloc.dart';

/// Represents the state of Second in the application.
class SecondState extends Equatable {
  SecondState({this.secondModelObj});

  SecondModel? secondModelObj;

  @override
  List<Object?> get props => [
        secondModelObj,
      ];
  SecondState copyWith({SecondModel? secondModelObj}) {
    return SecondState(
      secondModelObj: secondModelObj ?? this.secondModelObj,
    );
  }
}
