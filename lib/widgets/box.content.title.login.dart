import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/logic/login.switch/login_select_bloc.dart';
import 'package:theme/widgets/text.dart';

class BoxContainerLoginTitle extends StatelessWidget {
  const BoxContainerLoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginSelectBloc, LoginSelectState>(
      builder: (context, state) {
        (state as LoginSelectInitial);
        return Container(
          margin: const EdgeInsets.only(top: 0),
          height: 220,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.blueAccent]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: const TextLarge(text: 'advertix', size: 30),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 300,
                  height: 60,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => context
                            .read<LoginSelectBloc>()
                            .add(const OnSwitch(index: 0)),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.linear,
                          width: 140,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                state.index == 0 ? Colors.blue : Colors.white,
                                state.index == 0
                                    ? Colors.blueAccent
                                    : Colors.white
                              ]),
                              borderRadius: BorderRadius.circular(50)),
                          child: TextMoy(
                            text: 'Se connecter',
                            size: 18,
                            color:
                                state.index == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => context
                            .read<LoginSelectBloc>()
                            .add(const OnSwitch(index: 1)),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          width: 140,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                state.index == 1 ? Colors.blue : Colors.white,
                                state.index == 1
                                    ? Colors.blueAccent
                                    : Colors.white
                              ]),
                              borderRadius: BorderRadius.circular(50)),
                          child: TextMoy(
                              text: 'S\'inscrire',
                              size: 18,
                              color: state.index == 1
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
