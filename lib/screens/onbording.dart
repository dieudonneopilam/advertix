import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/widgets/deleyaed.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 100),
              DelayedWidget(
                  delay: 1000,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            colors: [Colors.amber, Colors.pink, Colors.blue],
                            transform: GradientRotation(2))),
                  )),
              const SizedBox(height: 10),
              const DelayedWidget(
                delay: 1300,
                child: Text('Advertix',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 50),
              DelayedWidget(
                delay: 2000,
                child: GestureDetector(
                  onTap: () => context.goNamed('home'),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.pink, Colors.amber]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      'GET STRATED',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const DelayedWidget(
                delay: 2500,
                child: Text('From',
                    style: TextStyle(fontSize: 20, color: Colors.grey)),
              ),
              const DelayedWidget(
                delay: 2800,
                child: Text('STRAR-TECH GROUP',
                    style: TextStyle(fontSize: 20, color: Colors.grey)),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
