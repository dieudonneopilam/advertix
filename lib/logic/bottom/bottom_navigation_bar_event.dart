part of 'bottom_navigation_bar_bloc.dart';

sealed class BottomNavigationBarEvent extends Equatable {
  const BottomNavigationBarEvent();

  @override
  List<Object> get props => [];
}

class OnChanged extends BottomNavigationBarEvent {
  const OnChanged({required this.index});
  final int index;
}
