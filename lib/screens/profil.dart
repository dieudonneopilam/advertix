import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/utils/color.dart';
import 'package:theme/widgets/text.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  late SharedPreferences prefs;
  void getPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.bgColor,
      appBar: AppBar(
        centerTitle: false,
        title: const TextLarge(text: 'Profile', color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            UserAccountsDrawerHeader(
              otherAccountsPictures: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                )
              ],
              currentAccountPicture: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/img/logo.png'),
              ),
              decoration: const BoxDecoration(color: Colors.white),
              accountName: const TextMoy(
                  text: 'Dieudonne ngwangwa', color: Colors.black, size: 18),
              accountEmail: const TextSmall(
                  text: 'dieudonneopilam2@gmail.com', color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: TextSmall(
                  text: 'Information Personnelle', color: Colors.blue),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 239, 239)),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 10),
                  const TextSmall(
                      text: 'Dieudonné Ngwangwa', color: Colors.black),
                  const SizedBox(height: 10),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 240, 239, 239)),
                  const SizedBox(height: 10),
                  const TextSmall(text: '+243816012173', color: Colors.black),
                  const SizedBox(height: 10),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 240, 239, 239)),
                  const SizedBox(height: 10),
                  const TextSmall(
                      text: 'dieudonneopilam2@gmail.com', color: Colors.blue),
                  const SizedBox(height: 10),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 240, 239, 239)),
                  const SizedBox(height: 10),
                  GestureDetector(
                      onTap: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            content: const TextSmall(
                              text: 'Voulez-vous vraiment vous deconnecter ?',
                              color: Colors.blue,
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: const TextSmall(
                                    text: 'NON', color: Colors.black),
                                onPressed: () => context.pop(),
                              ),
                              CupertinoDialogAction(
                                child: const TextSmall(
                                  text: 'OUI',
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  prefs.remove('token');
                                  prefs.remove('_id');
                                  prefs.remove('email');
                                  prefs.remove('firstName');
                                  prefs.remove('lastName');
                                  context.goNamed('login');
                                },
                              )
                            ],
                          ),
                        );
                      },
                      child: const TextSmall(
                          text: 'Deconnexion', color: Colors.red)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
