import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final bool initialValue;
  final String title;
  final Function(bool) callback;

  const CheckBoxWidget(
      {super.key,
      required this.initialValue,
      required this.title,
      required this.callback});

  @override
  State<StatefulWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      title: Text(widget.title),
      onChanged: (bool? value) {
        widget.callback(value!);
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
