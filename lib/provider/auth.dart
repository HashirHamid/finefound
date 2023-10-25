import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String? _token;
  String? _userId;
  String? _userEmail;
  String? _userName;

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if (_token != null) {
      return _token;
    }
    return null;
  }

  String? get username {
    return _userName;
  }

  String? get userId {
    return _userId;
  }

  String? get userEmail {
    return _userEmail;
  }

  Future<void> login(String email, String password) async {
    final url = "https://finefound.net/wp-json/hivepress/v1/users/login";
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(
          {
            "username_or_email": email,
            "password": password,
          },
        ),
      );
      final responseData = json.decode(response.body);
      _token = responseData['data']['id'].toString();
      print(_token);
      print("Here");
      notifyListeners();
    } catch (e) {
      print("Error:" + e.toString());
      throw e;
    }
  }

  Future<void> signup(String name, String email, String password) async {
    final url = "https://finefound.net/wp-json/hivepress/v1/users";
    try {
      final response = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: json.encode(
            {
              "username": name,
              "email": email,
              "password": password,
              "_terms": true
            },
          ));
      final responseData = json.decode(response.body);
      _token = responseData['data']['id'].toString();
      print(responseData);
      notifyListeners();
    } catch (e) {
      print("Error:" + e.toString());
      throw e;
    }
  }

  void logout() {
    _token = null;
    _userId = null;
    notifyListeners();
  }
}
