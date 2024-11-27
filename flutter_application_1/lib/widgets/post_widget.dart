import 'package:flutter/material.dart';
import 'expandable_text.dart';  // นำเข้าไฟล์ที่มี ExpandableTextBox

class PostWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String ProfileimageUrl;

  const PostWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ProfileimageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Container(
                width: 42.0,
                height: 42.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      ProfileimageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("torture_desu"),
                  Text("แนะนำสำหรับคุณ"),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "ติดตาม",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 24,
                ),
                onPressed: () {
                  // Implement share functionality
                },
              ),
            ],
          ),
        ),
        // Post Image
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Post Footer with Comment and Like
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      size: 28,
                    ),
                    onPressed: () {
                      // Implement like functionality
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                      size: 24,
                    ),
                    onPressed: () {
                      // Focus on comment field
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.send_outlined,
                      size: 24,
                    ),
                    onPressed: () {
                      // Implement share functionality
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.bookmark_border,
                      size: 28,
                    ),
                    onPressed: () {
                      // Implement bookmark functionality
                    },
                  ),
                ],
              ),
              // Like and Comment Count
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("ถูกใจ 54444 ครั้ง"),
                    // Use the existing ExpandableTextBox widget
                    ExpandableTextBox(
                      text:
                          "นี่คือข้อความที่ยาวมากๆ สำหรับการทดสอบ การแสดงผลแบบขยายได้ เมื่อข้อความยาวเกินกว่า 2 บรรทัด จะแสดงปุ่มเพิ่มเติมให้กดขยายดูข้อความทั้งหมด และสามารถกดเพื่อย่อกลับได้",
                    ),
                    const Text(
                      "ความคิดเห็นทั้งหมด 24 รายการ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 100, 99, 99),
                      ),
                    ),
                  ],
                ),
              ),
              // Comment Input
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        'https://via.placeholder.com/32',
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'เพิ่มความคิดเห็น...',
                          hintStyle: const TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[10],
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Time Ago
              Row(
                children: const [
                  Text(
                    "2 วันที่แล้ว",
                    style: TextStyle(
                      color: Color.fromARGB(255, 100, 99, 99),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
