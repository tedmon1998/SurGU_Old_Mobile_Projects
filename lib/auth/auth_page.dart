import 'package:event_app_mobile/auth/auth.dart';
import 'package:event_app_mobile/auth/registration.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AuthPage extends StatefulWidget {
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? Auth(
          onClickedSingUp: toggle,
        )
      : Registration(
          onClickedSingIn: toggle,
        );

  void toggle() => setState(() => isLogin = !isLogin);
}
