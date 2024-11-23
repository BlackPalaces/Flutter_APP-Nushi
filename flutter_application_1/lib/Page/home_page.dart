import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {  // เปลี่ยนชื่อ class ให้เป็น PascalCase
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nushi'),
        backgroundColor: Colors.white,  // สีพื้นหลัง AppBar
        elevation: 0,  // ลบเงา
        titleTextStyle: const TextStyle(
          color: Colors.black,  // สีของตัวอักษรใน AppBar
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: 'Italianno'
        ),
        actions: <Widget>[
          IconButton(
             icon: const Icon(Icons.favorite_border_rounded,
             size: 32,),
            tooltip: 'Show Alert',
            onPressed: () {
              // 
            },
          ),
          IconButton(
             icon: Image.asset('assets/icon/messenger.png'
             ,width: 26
             ,height: 26),
            tooltip: 'Show Messenger',
            onPressed: () {
              // 
            },
          ),
        ],
      ),
      body: SingleChildScrollView(  // ให้สามารถเลื่อนได้ถ้าเนื้อหาเกินหน้าจอ
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // กำหนดให้เลื่อนได้ในแนวนอน
       child: Container(
      margin: const EdgeInsets.only(left: 16.0, top: 8),
      color: Colors.red, //.l
      child: Row(
        children: [
          // Widget ย่อยที่จะแสดงใน Row
       
    Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      ),
      const SizedBox(height: 8), // เพิ่มระยะห่างระหว่างรูปกับข้อความ
      SizedBox(
        width: 80, 
        child: const Text(
          'สตอรี่ของคุณ',
          style: TextStyle(fontSize: 14, color: Colors.black),
          textAlign: TextAlign.center, // จัดข้อความให้อยู่กึ่งกลาง
          maxLines: 1,
        ),
      ),
    ],
  ),

         Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      ),
      const SizedBox(height: 8), // เพิ่มระยะห่างระหว่างรูปกับข้อความ
      SizedBox(
        width: 80, 
        child: const Text(
          'chin_n',
          style: TextStyle(fontSize: 14, color: Colors.black),
          textAlign: TextAlign.center, // จัดข้อความให้อยู่กึ่งกลาง
          maxLines: 1,
        ),
      ),
    ],
  ),
        ],
      ), 
      ),  
    ),
    // ส่วนหน้ากิจกรรมและโพสต่างๆ
    const SizedBox(height: 5), // เพิ่มระยะห่างระหว่างสองคอลัมน์
    Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container(
              child: Column(
                children: [
                  const Text("System")
                ],//ffff
              ) //ddd
            ),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.green,
              child: const Center(child: Text('วีดีโอ')),
            ),
          ],
        ),
  ],
          ),
          
        ),
      ),
    );
  }
}