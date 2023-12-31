import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/details/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.passwordEditorController,
    required this.obscureText,
    required this.toggleObscureText,
    required this.borderColor,
    required this.shadowColor,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final TextEditingController passwordEditorController;
  final bool obscureText;
  final void Function()? toggleObscureText;
  final Color borderColor, shadowColor;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      borderColor: borderColor,
      shadowColor: shadowColor,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        onChanged: onChanged,
        controller: passwordEditorController,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffix: InkWell(
            onTap: toggleObscureText,
            child: obscureText
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
          hintText: "パスワード",
          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
