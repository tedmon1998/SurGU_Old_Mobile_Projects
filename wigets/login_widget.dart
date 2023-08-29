import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:study_manager/main.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSingUp;

  const LoginWidget({Key? key, required this.onClickedSingUp})
      : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: emailController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
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
                icon:
                    Icon(_isvisible ? Icons.visibility_off : Icons.visibility),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), primary: Colors.green),
            icon: const Icon(
              Icons.lock_open,
              size: 32,
            ),
            label: const Text(
              'Войти',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: singIn,
          ),
          const SizedBox(
            height: 20,
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
    );
  }

  Future singIn() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
