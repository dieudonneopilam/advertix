part of 'paiement_selected_bloc.dart';

sealed class PaiementSelectedState extends Equatable {
  const PaiementSelectedState();

  @override
  List<Object> get props => [];
}

final class PaiementSelectedInitial extends PaiementSelectedState {
  final int paimentSelected;
  const PaiementSelectedInitial({required this.paimentSelected});
  @override
  List<Object> get props => [paimentSelected];
}
