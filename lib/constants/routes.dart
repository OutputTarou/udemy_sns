import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/views/login_page.dart';
import 'package:udemy_flutter_sns/views/singup_page.dart';

void toSignupPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => const SignupPage()));

void toLoginPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => const LoginPage()));
