import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme/widgets/deleyaed.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({super.key});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  late SharedPreferences prefs;
  @override
  void initState() {
    pref();
    super.initState();
  }

  void pref() async {
    prefs = await SharedPreferences.getInstance();
  }

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
                  onTap: () async {
                    context.goNamed('login');
                    await prefs.setBool('used', true);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.amber, Colors.pink],
                          transform: GradientRotation(3)),
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
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
