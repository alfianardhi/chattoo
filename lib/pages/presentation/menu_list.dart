import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

List<String> imgList = [
  "assets/images/foodImg.jpg",
  "assets/images/foodImg1.jpg",
  "assets/images/foodImg2.jpg",
  "assets/images/foodImg3.jpg",
  "assets/images/foodImg4.jpg",
  "assets/images/foodImg5.jpg",
];

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // child: ListView.builder(
          //   // scrollDirection: Axis.horizontal,
          //   itemCount: imgList.length,
          //   itemBuilder: (context, index) => Container(
          //     width: 100,
          //     height: 100,
          //     margin: EdgeInsets.only(bottom: 15),
          //     child: Image.asset(
          //       imgList[index],
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),

          child: GridView.builder(
            itemCount: imgList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Container(
              width: 100,
              height: 100,
              // margin: EdgeInsets.only(bottom: 15),
              child: Image.asset(
                imgList[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
