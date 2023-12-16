// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailEditorController,
            onChanged: (text) => signupModel.email = text,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: passwordEditorController,
            onChanged: (text) => signupModel.password = text,
            obscureText: signupModel.isObscure,
            decoration: InputDecoration(
                suffix: InkWell(
              child: const Icon(Icons.visibility_off),
              onTap: () => signupModel.toggleIsObsucure(),
            )),
          ),
          Center(
            child: signupModel.currentUser == null
                ? const Text("nullです")
                : const Text("nullじゃないです"),
          )
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
