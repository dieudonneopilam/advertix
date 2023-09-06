import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/logic/login.switch/login_select_bloc.dart';
import 'package:theme/widgets/box.content.title.login.dart';
import 'package:theme/widgets/login.widget.dart';
import 'package:theme/widgets/signup.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BoxContainerLoginTitle(),
            const SizedBox(height: 10),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: BlocConsumer<LoginSelectBloc, LoginSelectState>(
                listener: (context, state) {
                  (state as LoginSelectInitial);
                  pageController.animateToPage(state.index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                },
                builder: (context, state) {
                  (state as LoginSelectInitial);
                  return PageView(
                    onPageChanged: (value) => context
                        .read<LoginSelectBloc>()
                        .add(OnSwitch(index: value)),
                    controller: pageController,
                    children: const [LoginPageWidget(), SignUpPageWidget()],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}