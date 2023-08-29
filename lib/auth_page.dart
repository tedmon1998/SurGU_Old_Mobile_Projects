import 'package:flutter/material.dart';
import 'package:study_manager/login_widget.dart';
import 'package:study_manager/sing_up_widget.dart';

class AuthPage extends StatefulWidget {
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickedSingUp: toggle)
      : SingUpWidget(onClickedSingIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
