import 'package:flutter/material.dart';

class FondoCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          right: -(size.width) * .85,
          top: -(size.width) * .3,
          child: Container(
            width: size.height * .8,
            height: size.height * .8,
            decoration: BoxDecoration(
                color: Color.fromRGBO(239, 239, 239, 1.0),
                borderRadius: BorderRadius.circular(2000.0)),
          ),
        ),
      ],
    );
  }
}
