import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  delay: 700,
                  child: Image.asset(
                    'assets/img/logo.png',
                    height: 200,
                  )),
              const SizedBox(height: 10),
              DelayedWidget(
                delay: 1500,
                child: Text('Advertix',
                    style: GoogleFonts.karla(
                        fontSize: 40, fontWeight: FontWeight.w600)),
              ),
              const SizedBox(height: 50),
              DelayedWidget(
                delay: 2000,
                child: GestureDetector(
                  onTap: () => context.goNamed('login'),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Colors.blue,
                        Color.fromARGB(255, 51, 86, 146)
                      ], transform: GradientRotation(3)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'COMMENCER',
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              DelayedWidget(
                delay: 2500,
                child: Text('From', style: GoogleFonts.poppins(fontSize: 20)),
              ),
              DelayedWidget(
                delay: 2800,
                child: Text('Star-Tech Group',
                    style: GoogleFonts.poppins(fontSize: 20)),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
