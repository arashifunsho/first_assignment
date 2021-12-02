import 'package:flutter/material.dart';
import './apptext.dart';

class TextControl extends StatelessWidget {
  final VoidCallback callback;
  final int textIndex;
  var changingText;
  TextControl({required this.callback, required this.textIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            AppText().getText(index: textIndex),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: callback,
            child: Text('Generate Text'),
          ),
        ],
      ),
    );
  }
}
