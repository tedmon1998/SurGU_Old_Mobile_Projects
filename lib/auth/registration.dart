import 'package:event_app_mobile/auth/http_client/http_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  final Function() onClickedSingIn;

  const Registration({
    Key? key,
    required this.onClickedSingIn,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late String username = '';
  late String firstname = '';
  late String lastname = '';
  late String password = '';
  late String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register Page'),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              TextField(
                obscureText: false,
                decoration: const InputDecoration(hintText: 'username'),
                onChanged: (value) {
                  setState(() {
                    username = value.toLowerCase();
                  });
                },
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(hintText: 'firstname'),
                onChanged: (value) {
                  setState(() {
                    firstname = value;
                  });
                },
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(hintText: 'lastname'),
                onChanged: (value) {
                  setState(() {
                    lastname = value;
                  });
                },
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(hintText: 'password'),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(hintText: 'email'),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              InkWell(
                onTap: () async {
                  await HttpService.register(
                      username.toLowerCase(),
                      firstname.toLowerCase(),
                      lastname.toLowerCase(),
                      password.toLowerCase(),
                      email.toLowerCase(),
                      context);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  text: 'Есть аккаунт?  ',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSingIn,
                      text: 'Войти',
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
