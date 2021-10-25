import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    this.icon,
    this.inputAction = TextInputAction.next,
    this.obText = false,
    this.onSaved,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.inputType, this.hint,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final bool obText;
  final TextInputAction inputAction;
  final Function onSaved;
  final Function validator;
  final TextInputType keyboardType;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: BodyText6,
        fillColor: Colors.white,
        filled: true,
        enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20.0)),
        border:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20.0)),
        suffixIcon: Icon(
          icon,
          color: SecondaryColor,
        ),
      ),
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obText,
      textInputAction: inputAction,
      onSaved: onSaved,
    );
  }
}