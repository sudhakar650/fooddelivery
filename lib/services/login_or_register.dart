import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool _isLoginPage = true;
  void _switch(){
    setState(() {
      _isLoginPage = !_isLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return _isLoginPage ? LoginPage(goToRegister: _switch,) : RegisterPage(goToLogin: _switch,);
  }
}