import 'package:firebase_auth/firebase_auth.dart';

class Usera {
  String id;
  final String name;
  final String phone;
  final String password;
  final String email;
  final String avatar;
  final String coin;
  final String lv;
  final String highscore;
  Usera({
    required this.id,
    required this.name,
    required this.password,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.coin,
    required this.lv,
    required this.highscore,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'password': password,
      'email': email,
      'avatar': avatar,
      'coin': coin,
      'lv': lv,
      'highscore': highscore,
    };
  }
}
