import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/home_item_dm.dart';

class HomeScreenItem extends StatelessWidget {
  HomeItemDM itemDM;

  HomeScreenItem({required this.itemDM});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: double.infinity,
              color: Colors.green,
              child: Image.asset(itemDM.imagePath, fit: BoxFit.fill,)),
          Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: Color(0xB38A2598),
              child: Text(itemDM.title,
                style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }

}