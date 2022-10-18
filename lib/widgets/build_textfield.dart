import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuildTextField extends StatefulWidget {
  String hintText;
  bool? isPassword;

  BuildTextField({required this.hintText, this.isPassword});

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  bool isVisible = true;

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextFormField(
      obscureText:widget.isPassword!=null? isVisible:false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: widget.hintText,
        suffixIcon:widget.isPassword!=null? IconButton(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          icon: isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ):Container(height: 0,width: 0),
      ),
    );
  }
}
