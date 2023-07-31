import 'package:flutter/material.dart';

import 'colors.dart';

class CatItem extends StatelessWidget {
  const CatItem({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 74,
            // height: 74,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorM.seconde,
            ),
            child: ImageIcon(
              AssetImage(icon),
              size: 45,
              color: ColorM.primary,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
