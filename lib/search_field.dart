import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySearchField extends StatefulWidget {
  @override
  _MySearchFieldState createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  final _search = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20, top: 120),
      color: Colors.transparent,
      width: double.infinity,
      height: 60,
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16),
          child: TextField(
            controller: _search,
            style: TextStyle(fontSize: 20.0, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'What would you want to eat?',
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(
                  FontAwesomeIcons.search,
                  size: 24,
                  color: Color(0XFFFF3334),
                ),
                onPressed: () {},
              ),
            ),
            maxLines: 1,
            minLines: 1,
          ),
        ),
      ),
    );
  }
}
