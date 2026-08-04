import 'package:flutter/material.dart';

class CCPasswordField extends StatefulWidget {
  const CCPasswordField({
    super.key,
    required this.label,
    this.controller,
    this.hintText,
    this.validator,
    this.textInputAction,
    this.onFieldSubmitted,
    this.enabled = true,
  });

  final String label;
  final TextEditingController? controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final bool enabled;

  @override
  State<CCPasswordField> createState() => _CCPasswordFieldState();
}

class _CCPasswordFieldState extends State<CCPasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label.toUpperCase(),
          style: theme.textTheme.labelLarge?.copyWith(
            color: Colors.white70,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),

        const SizedBox(height: 10),

        TextFormField(
          controller: widget.controller,
          enabled: widget.enabled,
          obscureText: _obscure,
          validator: widget.validator,
          textInputAction: widget.textInputAction,
          onFieldSubmitted: widget.onFieldSubmitted,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),

          cursorColor: theme.colorScheme.primary,

          decoration: InputDecoration(
            hintText: widget.hintText,

            hintStyle: const TextStyle(
              color: Colors.white38,
            ),

            prefixIcon: const Icon(
              Icons.lock_outline,
              color: Colors.white60,
            ),

            suffixIcon: IconButton(
              splashRadius: 20,
              onPressed: () {
                setState(() {
                  _obscure = !_obscure;
                });
              },
              icon: Icon(
                _obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.white60,
              ),
            ),

            filled: true,
            fillColor: const Color(0xFF232323),

            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.white.withValues(alpha: .08),
              ),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),

            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Colors.redAccent,
                width: 2,
              ),
            ),

            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Colors.redAccent,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}