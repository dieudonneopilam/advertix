// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:theme/models/user.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme/utils/snackbar.dart';

class AuthServices {
  Future<void> signUser(BuildContext context,
      {String? email, String? password}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.https('user-api-k8ne.onrender.com', 'api/users/signin');
    var response =
        await http.post(url, body: {'email': email, 'password': password});
    if (response.statusCode == 200) {
      var json = await jsonDecode(response.body);

      await prefs.setString('token', json['token']);
      await prefs.setString('email', json['email']);
      await prefs.setString('firstName', json['firstName']);
      await prefs.setString('lastName', json['lastName']);
      await prefs.setString('id', json['_id']);
      context.goNamed('paiement');
    }
    if (response.statusCode == 404) {
      showSnackBar('Ces identifiants ne sont pas reconnus', context);
    } else {
      showSnackBar('Ces identifiants ne sont pas reconnus', context);
    }
  }

  Future<void> signUp(RegisterUser user, BuildContext context) async {
    var url = Uri.https('user-api-k8ne.onrender.com', 'api/users/signup');
    var response = await http.post(url, body: user.toJson());
    if (response.statusCode == 200) {
    } else {
      showSnackBar('Une erreur du serveur', context);
    }
  }
}
