import 'package:auth_flutter/core/theme/sizes.dart';
import 'package:flutter/material.dart';

class VElevatedButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;
  const VElevatedButton({
    super.key,
    required this.text,
    this.height = Sizes.spacingLarge,
    this.width = double.infinity,
    required this.onPressed,
  });

  @override
  State<VElevatedButton> createState() => _VElevatedButtonState();
}

class _VElevatedButtonState extends State<VElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
      ),
    );
  }
}
