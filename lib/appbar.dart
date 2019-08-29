import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

class MyAppBarHome extends StatefulWidget implements PreferredSizeWidget {
  @override
  _MyAppBarHomeState createState() => _MyAppBarHomeState();
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}

class _MyAppBarHomeState extends State<MyAppBarHome> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Ndutz Resto',
        style: TextStyle(fontFamily: 'Humnst777 BlkCn BT', fontSize: 28),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconButton(
            icon: Badge(
              badgeContent: Text(
                '5',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              badgeColor: Colors.blue,
              shape: BadgeShape.square,
              borderRadius: 3,
              child: Icon(
                MdiIcons.bellOutline,
                color: Colors.white,
                size: 32,
              ),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
