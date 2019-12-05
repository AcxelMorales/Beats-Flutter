import 'package:beats/src/models/producto_model.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:beats/src/providers/productos_provider.dart';
import 'package:provider/provider.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productos = Provider.of<ProductosProvider>(context);

    return Container(
      width: double.infinity,
      height: 460.0,
      child: PageView(
        controller: PageController(viewportFraction: .844),
        children: productos.productos.map((prod) => _Card(prod)).toList(),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  ProductoModel prod;

  _Card(this.prod);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              _Desc(prod),
              SizedBox(
                width: 55.0,
              ),
              _TarjetaDesc(prod),
            ],
          ),
          Positioned(
            top: 90,
            left: 50,
            child: Image(
              image: AssetImage('assets/img/${prod.url}'),
              width: 130.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _Desc extends StatelessWidget {
  ProductoModel prod;

  _Desc(this.prod);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.batteryFull,
              size: 15.0,
            ),
            SizedBox(width: 10.0),
            Text(
              '${prod.bateria} hour battery',
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(
              width: 30.0,
            ),
            Icon(
              FontAwesomeIcons.wifi,
              size: 15.0,
            ),
            SizedBox(width: 10.0),
            Text(
              'Wireless',
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}

class _TarjetaDesc extends StatelessWidget {
  ProductoModel prod;

  _TarjetaDesc(this.prod);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: size.width * .55,
          height: 340.0,
          color: Color(prod.color),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      prod.titulo,
                      style: TextStyle(
                          color: Colors.white24,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      prod.subtitulo,
                      style: TextStyle(
                          color: Colors.white24,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(prod.nombre,
                        style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    child: Text(
                      '\$${prod.precio}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Add to bag',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    width: 100.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(15.0)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
