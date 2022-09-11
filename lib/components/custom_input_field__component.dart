import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController _controller;
  final TextInputType _inputType;
  final TextInputAction _inputAction;
  final String _label;
  final String _hint;
  final Function(String) _validate;
  final bool isObscured;
  final bool isCapitalized;
  final int maxLines;
  final bool isLabelEnabled;

  const CustomFormField(
      {required TextEditingController controller,
      required TextInputType inputType,
      required TextInputAction inputAction,
      required String label,
      required String hint,
      required Function(String) validate,
      this.maxLines = 1,
      this.isCapitalized = false,
      this.isLabelEnabled = true,
      this.isObscured = false,
      Key? key})
      : _controller = controller,
        _inputType = inputType,
        _inputAction = inputAction,
        _label = label,
        _hint = hint,
        _validate = validate,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _controller,
        cursorColor: Colors.blueGrey,
        maxLines: maxLines,
        keyboardType: _inputType,
        textInputAction: _inputAction,
        obscureText: isObscured,
        validator: (value) => _validate(value!),
        textCapitalization:
            isCapitalized ? TextCapitalization.words : TextCapitalization.none,
        decoration: InputDecoration(
          labelText: isLabelEnabled ? _label : null,
          labelStyle: TextStyle(color: Colors.blueGrey),
          hintText: _hint,
          hintStyle: TextStyle(color: Colors.blueGrey),
          errorStyle: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        )
        //   focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: BorderSide(
        //       color: Colors.amberAccent,
        //       width: 2,
        //     ),
        //   ),
        //   enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: BorderSide(
        //       color: Colors.blueGrey,
        //       width: 2,
        //     ),
        //   ),
        //   errorBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: BorderSide(
        //       color: Colors.redAccent,
        //       width: 2,
        //     ),
        //   ),
        //   focusedErrorBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10),
        //       borderSide: BorderSide(
        //         color: Colors.redAccent,
        //         width: 2,
        //       )),
        // ),
        );
  }
}
