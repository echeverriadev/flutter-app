import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( 
        children: <Widget>[
          _crearFondo(context)
        ],
      )
    );
  }

  Widget _crearFondo(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    final _fondo = Container( 
      height: _screenSize.height * 0.40,
      width: double.infinity,
      decoration: BoxDecoration(  
        gradient: LinearGradient(  
          colors: <Color>[
            Color.fromRGBO( 61, 28, 11, 1.0),
            Color.fromRGBO(  171, 100, 37 , 1.0)
          ]
        )
      ),
    );

    final circulo = Container( 
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(  
        borderRadius: BorderRadius.circular(100.0),
        color:  Color.fromRGBO(255, 255, 255, 0.05),

      ),
    );

    return Stack( 
      children: <Widget>[
        _fondo,
        Positioned(
          left: 30.0,
          top: 90.0,
          child: circulo,
        ),
        Positioned(
          left: -30.0,
          top: -40.0,
          child: circulo,
        ),
        Positioned(
          bottom: -50.0,
          right: -10.0,
          child: circulo,
        ),
      ],
    );
  }
}