import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class DivisionTextField extends StatelessWidget {
  final TextInputAction? myInputAction;
  final void Function(String?)? whenTapped;
  final String? text;
  final String? hintString;
  final Widget? labelString;
  final int? linesCount;
  final Color? color;

  const DivisionTextField({
    Key? key,
    this.linesCount,
    this.hintString,
    this.labelString,
    this.color,
    this.text,
    this.myInputAction = TextInputAction.next, required this.whenTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.center,
      onSaved: whenTapped,
      textInputAction: myInputAction,
      keyboardType: TextInputType.text,
      maxLines: linesCount,
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        label: labelString,
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hintString,
        enabledBorder: customOutlineInputBorder(color: Colors.black),
        focusedBorder: customOutlineInputBorder(color: Colors.grey),
      ),
    );
  }
}
