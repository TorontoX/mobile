import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          title: Center(
            child: Text(
              'One Finger',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // ใส่โค้ดเมื่อกดปุ่ม icon ที่ต้องการให้ทำงาน
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // ใส่โค้ดเมื่อกดปุ่ม icon ที่ต้องการให้ทำงาน
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    'assets/images/dune.jpg',
                    'assets/images/kungfupanda.jpg',
                    'assets/images/pnak.jpg',
                    'assets/images/spy.jpg'
                  ].map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () {
                            // ใส่โค้ดที่ต้องการให้ทำงานเมื่อรูปถูกคลิก
                            print('Image Clicked: $item');
                            // ตัวอย่างเพิ่มเติม: เปิดหน้าใหม่หรือทำงานอื่น ๆ ตามต้องการ
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: 250.0,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 10), // เพิ่มระยะห่างระหว่างข้อความและรูปภาพ
                Text(
                  'New Movie Now',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/conan.jpg', 
                                  width: 150,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Conan The movie',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/doll.jpg', 
                                  width: 150,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Imaginary',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/brick.jpg', 
                                  width: 150,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Bricklayer',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/demon.jpg', 
                                  width: 150,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Demon Slayer Themovie',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                               ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
