// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/details/rounded_password_field.dart';
import 'package:udemy_flutter_sns/details/rounded_text_field.dart';
// models
import 'package:udemy_flutter_sns/models/singup_model.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupModel signupModel = ref.watch(signupProvider);
    final TextEditingController emailEditorController =
        TextEditingController(text: signupModel.email);
    final TextEditingController passwordEditorController =
        TextEditingController(text: signupModel.password);

    return Scaffold(
      appBar: AppBar(
        title: const Text("サインアップ"),
      ),
      body: Column(
        children: [
          RoundedTextField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (text) => signupModel.email = text,
            controller: emailEditorController,
            shadowColor: const Color(0xFF77BFA3).withOpacity(0.3),
            borderColor: Colors.black,
            hintText: "メールアドレス",
          ),
          RoundedPasswordField(
              onChanged: (text) => signupModel.password = text,
              passwordEditorController: passwordEditorController,
              obscureText: signupModel.isObscure,
              toggleObscureText: () => signupModel.toggleIsObsucure(),
              borderColor: Colors.black,
              shadowColor: const Color(0xFFEDEEC9)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => signupModel.createUser(context: context),
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}
