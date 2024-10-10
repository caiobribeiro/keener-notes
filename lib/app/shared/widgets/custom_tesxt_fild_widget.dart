import 'package:flutter/material.dart';

class CustomTesxtFildWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChange;
  final Icon? prefixIcon;
  const CustomTesxtFildWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onChange,
    this.prefixIcon,
  });

  @override
  State<CustomTesxtFildWidget> createState() => _CustomTesxtFildWidgetState();
}

class _CustomTesxtFildWidgetState extends State<CustomTesxtFildWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChange,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
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
