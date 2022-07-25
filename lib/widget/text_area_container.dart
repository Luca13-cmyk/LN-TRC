import 'package:flutter/material.dart';
import 'package:lntrc/widget/circle_button.dart';

class TextAreaContainer extends StatelessWidget {
  final String text;
  final VoidCallback onClickedCopy;
  final String placeholder;

  const TextAreaContainer({
    required this.text,
    required this.onClickedCopy,
    required this.placeholder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Container(
              height: 150,
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: SelectableText(
                text.isEmpty ? placeholder : text,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(width: 8),
          CircleButtonComponent(
            iconSize: 20,
            icon: Icons.copy,
            onPressed: onClickedCopy,
          ),
        ],
      );
}
