// lib/widgets/expandable_text.dart
import 'package:flutter/material.dart';

class ExpandableTextBox extends StatefulWidget {
  final String text;

  const ExpandableTextBox({
    Key? key, 
    required this.text,
  }) : super(key: key);

  @override
  State<ExpandableTextBox> createState() => _ExpandableTextBoxState();
}

class _ExpandableTextBoxState extends State<ExpandableTextBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : 2,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 14,
          ),
        ),
        if (widget.text.length > 50)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? "แสดงน้อยลง" : "เพิ่มเติม...",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}