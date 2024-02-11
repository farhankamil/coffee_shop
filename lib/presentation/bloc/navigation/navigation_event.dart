part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}

class SelectTab extends NavigationEvent {
  final int tabIndex;
  SelectTab({required this.tabIndex});
}
