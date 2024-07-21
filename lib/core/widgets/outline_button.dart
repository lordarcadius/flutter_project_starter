import 'package:auth_flutter/core/theme/sizes.dart';
import 'package:flutter/material.dart';

class VOutlineButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;
  const VOutlineButton({
    super.key,
    required this.text,
    this.height = Sizes.spacingLarge,
    this.width = double.infinity,
    required this.onPressed,
  });

  @override
  State<VOutlineButton> createState() => _VOutlineButtonState();
}

class _VOutlineButtonState extends State<VOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: OutlinedButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
      ),
    );
  }
}
