// ignore_for_file: must_be_immutable

part of 'fourth_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fourth widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FourthEvent extends Equatable {}

/// Event that is dispatched when the Fourth widget is first created.
class FourthInitialEvent extends FourthEvent {
  @override
  List<Object?> get props => [];
}
