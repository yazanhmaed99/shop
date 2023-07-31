import 'package:flutter/material.dart';

import 'colors.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key? key, required this.icon, required this.title, required this.price,
  }) : super(key: key);
    final String icon;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 144,
      color:  ColorM.seconde,
      child: Column(
        children: [
          Image.asset(
           icon ,
            height: 80,
          ),
           Text(title),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all(const Size(73, 21)),
                backgroundColor:
                    MaterialStateProperty.all(ColorM.primary)),
            child:  Text('$price JD'),
          )
        ],
      ),
    );
  }
}