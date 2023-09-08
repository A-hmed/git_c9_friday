import 'package:flutter/material.dart';
import 'package:friday_flutter_basics_c9/ui/screens/calculator/calculator.dart';
import 'package:friday_flutter_basics_c9/ui/screens/home/home_screen_item.dart';

import '../../../model/home_item_dm.dart';

class Home extends StatelessWidget {
  static String routeName = "Home";
  HomeItemDM car = HomeItemDM(
      title: "Cars", imagePath: "assets/images/car.jpg");

  List<HomeItemDM> items = [
    HomeItemDM(title: "Health", imagePath: "assets/images/health.png"),
    HomeItemDM(title: "Health", imagePath: "assets/images/health.png"),
  ];
  Color purple = Color(0xFF8A2598);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar title", style: TextStyle(fontSize: 30,
            color: Colors.white),),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 4,),
            Row(
              children: [
                SizedBox(width: 4,),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      color: purple,
                      child: Text("News", textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 24),)),
                ),
                SizedBox(width: 4,),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      color: purple,
                      child: Text("Magazine", textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 24))),
                ),
                SizedBox(width: 4,),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 1
                  ),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) =>
                      HomeScreenItem(itemDM: items[0])

              ),
            )
          ],
        ),
      ),
    );
  }
}
