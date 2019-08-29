import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './appbar.dart'; // For AppBar
import './banner.dart'; // For 3 Banner
import './search_field.dart'; // For Search text field

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _cardCategory(String _name, IconData _icon) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.4),
              ),
              child: Icon(
                _icon,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
                child: Center(
              child: Text(
                _name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget _popularFood(IconData _type, Color _typeColor, String _images,
      String _name, String _price, String _rating) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 0),
      child: Card(
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: InkWell(
            child: Container(
              width: 160.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(_images),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(7),
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: InkWell(
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                  )
                                ],
                                shape: BoxShape.circle,
                                color: _typeColor,
                              ),
                              child: Icon(
                                _type,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                            onTap: () {
                              print('You Tap that Love bro!.');
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                _name,
                                style: TextStyle(
                                    color: Color(0XFF323751), fontSize: 18),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            Text(
                              _rating,
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 14),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  _price,
                                  style: TextStyle(
                                      color: Color(0XFFD62324),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200)),
                                    color: Color(0XFFD62324)),
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
          )),
    );
  }

  Widget _buildDashWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        170 ~/ (10 + 5),
        (_) => Container(
          width: 10,
          height: 2,
          color: Colors.white70,
          margin: EdgeInsets.only(left: 4 / 2, right: 4 / 2),
        ),
      ),
    );
  }

  Widget _bestFood(String _images, String _name) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 0),
      child: Card(
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: InkWell(
            child: Container(
              width: 160,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(_images),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.transparent]),
                      ),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildDashWidget(),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              _name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
          )),
    );
  }

  Widget _iconBottomNav(IconData _icon, String _textIcon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(
            _icon,
            size: 36,
            color: Color(0XFF323751),
          ),
          onPressed: () {},
        ),
        Text(
          _textIcon,
          style: TextStyle(
            color: Color(0XFF323751),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: MyAppBarHome(),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              MyBannerHome(),
              MySearchField(),
            ],
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 3,
              color: Color(0XFFFF3334),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFD62324),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 32,
                    child: Center(
                      child: Text(
                        'Category',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: _cardCategory('Breakfast', MdiIcons.tea),
                      ),
                      Flexible(
                        child:
                            _cardCategory('Main', MdiIcons.silverwareVariant),
                      ),
                      Flexible(
                        child:
                            _cardCategory('Vegetable', FontAwesomeIcons.leaf),
                      ),
                      Flexible(
                        child: _cardCategory('Dessert', MdiIcons.muffin),
                      ),
                      Flexible(
                        child:
                            _cardCategory('Beverage', MdiIcons.glassCocktail),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            title: Text(
              'Popular Food',
              style: TextStyle(
                  color: Color(0XFF323751),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Container(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'More',
                    style: TextStyle(color: Color(0XFFFF3334), fontSize: 16),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: Color(0XFFFF3334),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 0, bottom: 10),
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: <Widget>[
                _popularFood(MdiIcons.heart, Colors.white, "assets/food1.jpg",
                    "Soto Betawi", "Rp. 10k", "4,8"),
                _popularFood(MdiIcons.heartOutline, Colors.white,
                    "assets/food2.jpg", "Pepes Ikan", "Rp. 12k", "4,6"),
                _popularFood(MdiIcons.heartOutline, Colors.white,
                    "assets/food3.jpg", "Gulai Ayam", "Rp. 9k", "4,5"),
              ],
            ),
          ),
          Container(
            color: Color(0XFFFF3334),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 20),
              title: Text(
                'Best Food',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Container(
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'More',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            color: Color(0XFFFF3334),
            height: 570,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.5,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                _bestFood("assets/best1.jpg", "Rawon Setan"),
                _bestFood("assets/best2.jpg", "Ayam Bakar BBQ"),
                _bestFood("assets/best3.jpg", "Udang Sambal Pete"),
                _bestFood("assets/best4.jpg", "Sambal Terasi"),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          MdiIcons.silverwareClean,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Color(0XFF323751),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 72,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _iconBottomNav(MdiIcons.cart, 'Cart'),
              _iconBottomNav(MdiIcons.heart, 'Favorites'),
              Container(),
              _iconBottomNav(MdiIcons.bellRing, 'Notification'),
              _iconBottomNav(FontAwesomeIcons.userCog, 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
