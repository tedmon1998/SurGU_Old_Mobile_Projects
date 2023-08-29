import 'package:event_app_mobile/auth/http_client/http_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  final VoidCallback onClickedSingUp;
  const Auth({Key? key, required this.onClickedSingUp}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  late String _username = '';
  late String _password = '';
  late String accessToken = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'login',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              InkWell(
                onTap: () async {
                  // print(_username);
                  // print(_password);
                  await HttpService.login(_username, _password, context);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  text: 'Нет аккаунта?  ',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSingUp,
                      text: 'Регистрация',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
