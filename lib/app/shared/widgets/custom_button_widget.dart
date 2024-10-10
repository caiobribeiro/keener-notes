import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  final Function() onPressed;
  final String text;
  final Icon? icon;
  final bool? isValid;
  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.isValid = true,
  });

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.isValid == true
        ? ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: widget.icon == null
                ? Text(widget.text)
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(widget.text),
                      const SizedBox(
                        width: 10,
                      ),
                      widget.icon!,
                    ],
                  ),
          )
        : ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              textStyle: const TextStyle(fontSize: 16),
              backgroundColor: Colors.grey,
            ),
            child: widget.icon == null
                ? Text(
                    widget.text,
                    style: const TextStyle(color: Colors.black38),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.text,
                        style: const TextStyle(color: Colors.black38),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        widget.icon!.icon,
                        color: Colors.black38,
                      ),
                    ],
                  ),
          );
  }
}
