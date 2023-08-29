//import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:study_manager/main.dart';

class SingUpWidget extends StatefulWidget {
  final Function() onClickedSingIn;

  const SingUpWidget({
    Key? key,
    required this.onClickedSingIn,
  }) : super(key: key);

  @override
  State<SingUpWidget> createState() => _SingUpWigetState();
}

class _SingUpWigetState extends State<SingUpWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isvisible = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (input) {
                if (input!.isEmpty) {
                  return 'dfdsfs';
                }
                print('object');
                return null;
              },
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              obscureText: _isvisible,
              controller: passwordController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Пароль',
                suffixIcon: IconButton(
                  onPressed: () => setState(() {
                    _isvisible = !_isvisible;
                  }),
                  icon: Icon(
                      _isvisible ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  primary: Colors.black),
              icon: const Icon(
                Icons.lock_open,
                size: 32,
              ),
              label: const Text(
                'Зарегистрироваться',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: singUp,
            ),
            const SizedBox(
              height: 20,
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
      );

  Future singUp() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
