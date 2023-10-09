class CurentUserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String token;
  CurentUserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });
  static CurentUserModel formJson(Map<String, dynamic> json) {
    return CurentUserModel(
        email: json['email'],
        firstName: json['firstName'],
        id: json['_id'],
        lastName: json['lastName'],
        token: json['token']);
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'token': token
    };
  }
}

class RegisterUser {
  final String firstname;
  final String lastname;
  final String email;
  final String password;
  RegisterUser({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstname,
      'lastName': lastname,
      'email': email,
      'password': password
    };
  }
}
