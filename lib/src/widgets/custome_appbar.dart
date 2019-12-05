import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, right: 10.0),
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {},
          ),
          Spacer(),
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: () {},
          ),
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.shoppingBag),
                onPressed: () {},
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.ellipsisV,
              size: 15.0,
            ),
            onPressed: () {},
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              width: 50.0,
              height: 50.0,
              image: AssetImage('assets/img/im.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
