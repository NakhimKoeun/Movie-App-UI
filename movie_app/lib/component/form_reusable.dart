import 'package:flutter/material.dart';

class formreusable extends StatelessWidget {
  formreusable({
    super.key,
    required this.labelText,
    required this.hintText,
  });
  final String labelText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
    );
  }
}
