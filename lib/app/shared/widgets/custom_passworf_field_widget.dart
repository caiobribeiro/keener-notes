import 'package:flutter/material.dart';

class CustomPassworfFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChange;
  const CustomPassworfFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onChange,
  });

  @override
  State<CustomPassworfFieldWidget> createState() =>
      _CustomPassworfFieldWidgetState();
}

class _CustomPassworfFieldWidgetState extends State<CustomPassworfFieldWidget> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChange,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        suffixIconConstraints: const BoxConstraints(maxHeight: 40),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
