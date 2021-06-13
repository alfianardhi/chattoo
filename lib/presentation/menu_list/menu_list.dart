import 'package:chattoo/presentation/item_detail/item_detail.dart';
import 'package:flutter/material.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({Key? key}) : super(key: key);

  @override
  _MenuListPageState createState() => _MenuListPageState();
}

List<String> imgList = [
  "assets/images/foodImg.jpg",
  "assets/images/foodImg1.jpg",
  "assets/images/foodImg2.jpg",
  "assets/images/foodImg3.jpg",
  "assets/images/foodImg4.jpg",
  "assets/images/foodImg5.jpg",
];

class _MenuListPageState extends State<MenuListPage> {
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
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ItemDetailPage(foodimg: imgList[index])));
              },
              child: ListItemImg(
                imgList: imgList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListItemImg extends StatelessWidget {
  const ListItemImg({
    Key? key,
    required this.imgList,
  }) : super(key: key);
  final String imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      // margin: EdgeInsets.only(bottom: 15),
      child: Image.asset(
        imgList,
        fit: BoxFit.cover,
      ),
    );
  }
}
