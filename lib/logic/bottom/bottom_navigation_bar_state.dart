part of 'bottom_navigation_bar_bloc.dart';

sealed class BottomNavigationBarState extends Equatable {
  const BottomNavigationBarState();
}

final class BottomNavigationBarInitial extends BottomNavigationBarState {
  const BottomNavigationBarInitial({required this.index});
  final int index;

  @override
  List<Object> get props => [index];
}
