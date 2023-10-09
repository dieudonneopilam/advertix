// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/constants/enum.dart';
import 'package:theme/logic/current.user/current_user_bloc.dart';
import 'package:theme/logic/paie.selected/paiement_selected_bloc.dart';
import 'package:theme/logic/signup/sign_up_bloc.dart';
import 'package:theme/utils/color.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';
import 'package:theme/widgets/text.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class PaiePage extends StatefulWidget {
  const PaiePage({super.key});

  @override
  State<PaiePage> createState() => _PaiePageState();
}

class _PaiePageState extends State<PaiePage> {
  late SharedPreferences prefs;
  @override
  void initState() {
    getPref();
    super.initState();
  }

  void getPref() async {
    prefs = await SharedPreferences.getInstance();
    var json = {
      '_id': prefs.getString('_id'),
      'email': prefs.getString('email'),
      'firstName': prefs.getString('firstName'),
      'lastName': prefs.getString('lastName'),
      'token': prefs.getString('token'),
    };
    context.read<CurrentUserBloc>().add(OnCreatedUser(json: json));
    print(prefs.getString('token'));
  }

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
              text: 'Mode de recpetion d\'argent',
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
                  child: BlocBuilder<CurrentUserBloc, CurrentUserState>(
                    builder: (context, state) {
                      (state as CurrentUserInitial);
                      return TextSmall(
                        size: 18,
                        text: '${state.firstName} ${state.lastName}',
                        color: Colors.black,
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextMoy(
                      text: 'Choisir le moyen de paiement',
                      color: Colors.black),
                ),
                Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 20),
                      BoxPayMethod(
                        urlImage: 'assets/img/paypal.png',
                        indexContainer: 0,
                        onTap: () => context
                            .read<PaiementSelectedBloc>()
                            .add(const OnChangePaiement(paimentSelected: 0)),
                      ),
                      const SizedBox(width: 10),
                      BoxPayMethod(
                        urlImage: 'assets/img/mastercard.png',
                        indexContainer: 1,
                        onTap: () => context
                            .read<PaiementSelectedBloc>()
                            .add(const OnChangePaiement(paimentSelected: 1)),
                      ),
                      const SizedBox(width: 10),
                      BoxPayMethod(
                        urlImage: 'assets/img/airtelmoney.png',
                        indexContainer: 2,
                        onTap: () => context
                            .read<PaiementSelectedBloc>()
                            .add(const OnChangePaiement(paimentSelected: 2)),
                      ),
                      const SizedBox(width: 10),
                      BoxPayMethod(
                        urlImage: 'assets/img/orangemoney.png',
                        indexContainer: 3,
                        onTap: () => context
                            .read<PaiementSelectedBloc>()
                            .add(const OnChangePaiement(paimentSelected: 3)),
                      ),
                      const SizedBox(width: 10),
                      BoxPayMethod(
                        urlImage: 'assets/img/mpesa.png',
                        indexContainer: 4,
                        onTap: () => context
                            .read<PaiementSelectedBloc>()
                            .add(const OnChangePaiement(paimentSelected: 4)),
                      ),
                      const SizedBox(width: 10),
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
                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    (state as SignUpInitial);
                    return TextFielNormal(
                      hintText: '+243 816 012 173',
                      borderRadius: 10,
                      etatField: state.etatconfirmed,
                      controller: TextEditingController(),
                    );
                  },
                ),
                SizedBox(
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
                            controller: TextEditingController(),
                            etatField: EtatField.none,
                          ),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:
                                TextSmall(text: 'Montant', color: Colors.black),
                          ),
                          TextFielNormal(
                            hintText: 'CVV',
                            borderRadius: 10,
                            marginHorizontal: 5,
                            controller: TextEditingController(),
                            etatField: EtatField.none,
                          ),
                        ],
                      )),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                ButtomSimple(
                  colors: const [Colors.pinkAccent, Colors.orange],
                  title: 'Valider',
                  borderRius: 10,
                  onTap: () {
                    prefs.setBool('choosePaie', true);
                    context.goNamed('home');
                  },
                  etatRequest: EtatRequest.none,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class BoxPayMethod extends StatelessWidget {
  const BoxPayMethod({
    super.key,
    required this.onTap,
    required this.indexContainer,
    required this.urlImage,
  });
  final VoidCallback onTap;
  final int indexContainer;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: BlocBuilder<PaiementSelectedBloc, PaiementSelectedState>(
        builder: (context, state) {
          (state as PaiementSelectedInitial);
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            alignment: Alignment.center,
            height: state.paimentSelected == indexContainer ? 80 : 70,
            width: 100,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadiusDirectional.circular(10),
                color: state.paimentSelected == indexContainer
                    ? Colors.white
                    : const Color.fromARGB(255, 245, 245, 245),
                boxShadow: [
                  state.paimentSelected == indexContainer
                      ? const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                        )
                      : const BoxShadow()
                ]),
            child: Image.asset(urlImage, height: 50, fit: BoxFit.fitHeight),
          );
        },
      ),
    );
  }
}
