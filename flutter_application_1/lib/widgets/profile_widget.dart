// profile_widget.dart
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ProfileWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage(imageUrl), // ใช้ URL หรือ Asset สำหรับภาพ
              fit: BoxFit.cover,  // จัดการขนาดรูปภาพให้เหมาะสม
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 80,
          child: Text(
            name,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
