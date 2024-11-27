import 'package:flutter/material.dart';

// import '../widgets/InstagramLikeVideo.dart';
import '../widgets/expandable_text.dart';
import '../widgets/post_widget.dart';
import '../widgets/profile_widget.dart';

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
          color: Colors.black,  // สีของตัวอักษรใน AppBar ll
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
      
      child: Row(
        children: [
          // Widget ย่อยที่จะแสดงใน Row
       
    Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    Stack(
      children: [
        // รูปโปรไฟล์หลัก
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage('https://64.media.tumblr.com/3123ed8f8e431ce655bd2cf3ea2a38cb/49250e07505ddf9a-33/s400x600/04c304d5f3e7bd051ee5c644573ab33ab85d92df.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        
        // ปุ่มบวกซ้อนมุมขวาล่าง
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    ),
    const SizedBox(height: 8),
    SizedBox(
      width: 80,
      child: const Text(
        'สตอรี่ของคุณ',
        style: TextStyle(fontSize: 14, color: Colors.black),
        textAlign: TextAlign.center,
        maxLines: 1,
      ),
    ),
  ],
),
        ProfileWidget(
             name: 'bell_C',
            imageUrl: 'https://i.pinimg.com/736x/31/c2/c8/31c2c89dee15450045c58fb8226b39b1.jpg', // URL ของรูปภาพที่ต้องการแสดง
          ),
          ProfileWidget(
            name: 'torture_desu',
            imageUrl: 'https://a.storyblok.com/f/178900/750x422/e92ff0884b/himesamagoumonnojikandesu_pv1_04.jpg/m/filters:quality(95)format(webp)', // URL ของรูปภาพที่ต้องการแสดง
          ),
          ProfileWidget(
            name: 'chin_n',
            imageUrl: 'https://cdn.anisearch.com/images/character/cover/6/6640_400.webp', // URL ของรูปภาพที่ต้องการแสดง
          ),
          ProfileWidget(
            name: 'chin_n',
            imageUrl: 'https://example.com/profile-image.jpg', // URL ของรูปภาพที่ต้องการแสดง
          ),
          ProfileWidget(
            name: 'chin_n',
            imageUrl: 'https://example.com/profile-image.jpg', // URL ของรูปภาพที่ต้องการแสดง
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
              
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                      width: 42.0,  // กำหนดความกว้าง
                      height: 42.0, // กำหนดความสูง
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // ทำให้เป็นวงกลม
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://a.storyblok.com/f/178900/750x422/e92ff0884b/himesamagoumonnojikandesu_pv1_04.jpg/m/filters:quality(95)format(webp)',
                          ),
                          fit: BoxFit.cover, // ปรับให้ภาพพอดีกับวงกลม
                        ),
                      ),
                    ),
                  const SizedBox(width: 8,),
                  Container(
                   child: 
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("torture_desu"),
                       Text("แนะนำสำหรับคุณ"),
                    ],
                   ),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
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
              ) //ddd
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        'https://i.imgur.com/OrYd0iI.jpg',
      ),
      fit: BoxFit.cover, // ให้ภาพครอบคลุมพื้นที่
    ),
  ),
              // child: const InstagramVideo()
              
            ),
          ],
        ),
        Container(
          
          padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                icon: Icon(
                   Icons.favorite ,
                  size: 28,
                  // color: isLiked ? Colors.red : null,
                ),
                onPressed: () {
                  // setState(() {
                  //   isLiked = !isLiked;
                  // });
                },
              ),
              // Comment button
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
              // Share button
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
              // Bookmark button
              IconButton(
                icon: const Icon(
                  Icons.bookmark_border,
                  size: 28,
                ),onPressed: () {
                  // Implement bookmark functionality
                },
              ),
              ], )
                  ,
                  Container(
                    // color: Colors.red,
            
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ถูกใจ"+ " 54444"+" ครั้ง"),
                Container(
                  child: ExpandableTextBox(
                      text: "นี่คือข้อความที่ยาวมากๆ สำหรับการทดสอบ การแสดงผลแบบขยายได้ เมื่อข้อความยาวเกินกว่า 2 บรรทัด จะแสดงปุ่มเพิ่มเติมให้กดขยายดูข้อความทั้งหมด และสามารถกดเพื่อย่อกลับได้"
                   ),
                ),
                Text("ความคิดเห็นทั้งหมด 24 รายการ",
                style:
                TextStyle(
                  color: const Color.fromARGB(255, 100, 99, 99),
                ) ,
               )
              ],
            ),
          ),
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
                const SizedBox(width: 8,),
                Expanded(
                  child: TextField(
                    // controller: _commentController,
                    decoration: InputDecoration(
                      hintText: 'เพิ่มความคิดเห็น...',
                      hintStyle: TextStyle(
                        fontSize: 13
                      ),
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
          Row(
            children: [
              Text(
                "2 วันที่แล้ว",
                style: TextStyle(
                  color: const Color.fromARGB(255, 100, 99, 99), 
                  fontSize: 12,
                ),
              ),
            ],
          )
                ],
              ),
              
            ),
             PostWidget(
            title: "โพสต์ที่ 1",
            description: "นี่คือคำอธิบายของโพสต์ที่ 1",
            imageUrl: "https://i.ytimg.com/vi/queMRz6mn4E/maxresdefault.jpg",
            ProfileimageUrl: 'https://i.ytimg.com/vi/queMRz6mn4E/maxresdefault.jpg'
          ),
  ],
          ),
          
        ),
      ),
    );
  }
}