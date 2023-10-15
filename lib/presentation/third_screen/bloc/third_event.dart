// ignore_for_file: must_be_immutable

part of 'third_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Third widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirdEvent extends Equatable {}

/// Event that is dispatched when the Third widget is first created.
class ThirdInitialEvent extends ThirdEvent {
  @override
  List<Object?> get props => [];
}
