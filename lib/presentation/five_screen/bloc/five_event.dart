// ignore_for_file: must_be_immutable

part of 'five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Five widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiveEvent extends Equatable {}

/// Event that is dispatched when the Five widget is first created.
class FiveInitialEvent extends FiveEvent {
  @override
  List<Object?> get props => [];
}
