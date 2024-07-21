import 'package:auth_flutter/core/theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int maxLines;
  final TextCapitalization textCapitalization;

  const VTextField({
    super.key,
    required this.hintText,
    required this.textController,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.keyboardType,
    this.maxLength,
    this.maxLines = 1,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  State<VTextField> createState() => _VTextFieldState();
}

class _VTextFieldState extends State<VTextField> {
  late bool obscureText;

  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: widget.textCapitalization,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      validator: widget.validator,
      controller: widget.textController,
      obscureText: obscureText,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.keyboardType == TextInputType.number
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : null,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      decoration: const InputDecoration().copyWith(
          alignLabelWithHint: true,
          suffixIcon: widget.obscureText == true
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: obscureText
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                )
              : null,
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.radiusMedium),
          ),
          labelText: widget.hintText),
    );
  }
}
