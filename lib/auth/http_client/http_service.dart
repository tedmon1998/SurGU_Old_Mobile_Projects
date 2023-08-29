import 'dart:convert';
import 'package:event_app_mobile/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static final _client = http.Client();

  static final _loginUrl =
      Uri.parse('https://api-express.data-market.online/api/auth/signin/');

  static final _registerUrl =
      Uri.parse('https://api-express.data-market.online/api/auth/signup/');

  static login(username, password, context) async {
    http.Response response = await _client.post(
      _loginUrl,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        {
          "userName": username.toString(),
          "password": password.toString(),
        },
      ),
    );

    // print(username);
    // print(response.request?.headers);
    // print(response.statusCode);

    if (response.statusCode == 200) {
      //print(response.body);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
      var json = jsonDecode(response.body);

      if (json[0] == 'success') {
        await EasyLoading.showSuccess(json[0]);
        await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const HomePage()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }

  static register(
      username, firstname, lastname, password, email, context) async {
    http.Response response = await _client.post(
      _registerUrl,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        {
          "userName": username,
          "firstName": firstname,
          "lastName": lastname,
          "password": password,
          "email": email
        },
      ),
    );

    // print(response.body);
    // print(username);
    // print(firstname);
    // print(lastname);
    // print(email);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
      if (json[0] == 'username already exist') {
        await EasyLoading.showError(json[0]);
      } else {
        await EasyLoading.showSuccess(json[0]);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }

  static showUserInfo(
      username, firstname, lastname, password, email, context) async {
    http.Response response = await _client.post(
      _loginUrl,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        {
          "userName": username,
          "firstName": firstname,
          "lastName": lastname,
          "password": password,
          "email": email
        },
      ),
    );

    // print(response.body);
    // print(username);
    // print(firstname);
    // print(lastname);
    // print(email);

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.body);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }
}
