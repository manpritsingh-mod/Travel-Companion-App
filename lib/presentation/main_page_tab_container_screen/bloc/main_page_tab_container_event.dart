// ignore_for_file: must_be_immutable

part of 'main_page_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MainPageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MainPageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MainPageTabContainer widget is first created.
class MainPageTabContainerInitialEvent extends MainPageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
