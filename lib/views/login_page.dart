// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/details/rounded_password_field.dart';
import 'package:udemy_flutter_sns/details/rounded_text_field.dart';
import 'package:udemy_flutter_sns/models/login_model.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LoginModel loginModel = ref.watch(loginProvider);
    final TextEditingController emailEditingController =
        TextEditingController(text: loginModel.email);
    final TextEditingController passwordEditingController =
        TextEditingController(text: loginModel.password);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundedTextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) => loginModel.email = text,
              controller: emailEditingController,
              shadowColor: Colors.red.withOpacity(0.3),
              borderColor: Colors.black,
              hintText: "メールアドレス"),
          RoundedPasswordField(
              onChanged: (text) => loginModel.password = text,
              passwordEditorController: passwordEditingController,
              obscureText: loginModel.isObscure,
              toggleObscureText: () => loginModel.toggleIsObscure(),
              borderColor: Colors.black,
              shadowColor: Colors.blue.withOpacity(0.3))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginModel.login(context: context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
