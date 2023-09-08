import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/paie.selected/paiement_selected_bloc.dart';
import 'package:theme/utils/color.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';
import 'package:theme/widgets/text.dart';

class PaiePage extends StatelessWidget {
  const PaiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaiementSelectedBloc, PaiementSelectedState>(
      builder: (context, state) {
        (state as PaiementSelectedInitial);
        return Scaffold(
          backgroundColor: ColorApp.bgColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: const TextMoy(
              text: 'Effectuer votre paiement',
              size: 25,
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: TextMoy(text: 'Nom complet', color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const TextSmall(
                    size: 18,
                    text: 'Dieudonné Ngwangwa',
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextMoy(
                      text: 'Choisir le moyen de paiement',
                      color: Colors.black),
                ),
                Container(
                  height: 80,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Expanded(
                        child: InkWell(
                          onTap: () => context
                              .read<PaiementSelectedBloc>()
                              .add(const OnChangePaiement(paimentSelected: 0)),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            alignment: Alignment.center,
                            height: state.paimentSelected == 0 ? 80 : 70,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: state.paimentSelected == 0
                                    ? Colors.white
                                    : const Color.fromARGB(255, 245, 245, 245),
                                boxShadow: [
                                  state.paimentSelected == 0
                                      ? const BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                        )
                                      : const BoxShadow()
                                ]),
                            child: const TextLarge(
                                text: 'M-PESA', color: Colors.blue, size: 15),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InkWell(
                          onTap: () => context
                              .read<PaiementSelectedBloc>()
                              .add(const OnChangePaiement(paimentSelected: 1)),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            alignment: Alignment.center,
                            height: state.paimentSelected == 1 ? 80 : 70,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: state.paimentSelected == 1
                                    ? Colors.white
                                    : const Color.fromARGB(255, 245, 245, 245),
                                boxShadow: [
                                  state.paimentSelected == 1
                                      ? const BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                        )
                                      : const BoxShadow()
                                ]),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextLarge(
                                    text: 'Orange',
                                    color: Colors.orange,
                                    size: 15),
                                TextLarge(
                                    text: 'Money',
                                    color: Colors.orange,
                                    size: 15),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InkWell(
                          onTap: () => context
                              .read<PaiementSelectedBloc>()
                              .add(const OnChangePaiement(paimentSelected: 2)),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            alignment: Alignment.center,
                            height: state.paimentSelected == 2 ? 80 : 70,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: state.paimentSelected == 2
                                    ? Colors.white
                                    : const Color.fromARGB(255, 245, 245, 245),
                                boxShadow: [
                                  state.paimentSelected == 2
                                      ? const BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                        )
                                      : const BoxShadow()
                                ]),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextLarge(
                                    text: 'Airtel',
                                    color: Colors.red,
                                    size: 15),
                                TextLarge(
                                    text: 'Money', color: Colors.red, size: 15),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: TextSmall(
                      text: 'Numéro de téléphone',
                      color: Colors.black,
                      size: 18),
                ),
                const TextFielNormal(
                    hintText: '+243 816 012 173', borderRadius: 10),
                const SizedBox(
                  height: 105,
                  child: Row(
                    children: [
                      SizedBox(width: 15),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:
                                TextSmall(text: 'Montant', color: Colors.black),
                          ),
                          TextFielNormal(
                            hintText: 'CVV',
                            borderRadius: 10,
                            marginHorizontal: 5,
                          ),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:
                                TextSmall(text: 'Montant', color: Colors.black),
                          ),
                          TextFielNormal(
                              hintText: 'CVV',
                              borderRadius: 10,
                              marginHorizontal: 5),
                        ],
                      )),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                ButtomSimple(
                    title: 'Valider',
                    borderRius: 10,
                    onTap: () => context.goNamed('home'))
              ],
            ),
          ),
        );
      },
    );
  }
}
