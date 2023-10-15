// ignore_for_file: must_be_immutable

part of 'second_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Second widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SecondEvent extends Equatable {}

/// Event that is dispatched when the Second widget is first created.
class SecondInitialEvent extends SecondEvent {
  @override
  List<Object?> get props => [];
}
