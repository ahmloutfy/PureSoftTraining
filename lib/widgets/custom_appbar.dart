import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(
            AssetImage('assets/images/alphabet.png'),
            color: Colors.white,
          ),
          Text(
            'الرئيسية',
            style: kDefaultFontStyle,
          ),
          ImageIcon(
            AssetImage('assets/images/logout.png'),
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
