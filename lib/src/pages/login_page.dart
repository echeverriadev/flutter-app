import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( 
        children: <Widget>[
          _crearFondo(context),
          _loginForm(context),
        ],
      )
    );
  }

  Widget _loginForm( BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView( 
      child: Column(  
        children: <Widget>[

          SafeArea(
            child: Container( 
              height: 180.0,
            ),
          ),

          Container(  
            width: _screenSize.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical:50.0),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0)
            ),
            child: Column(  
              children: <Widget>[
                
                _crearEmail(),
                SizedBox(height: 30.0),
                _crearPass(),
                SizedBox(height: 30.0),
                _crearBoton(),
              ],
            ),
          ),

          Text("¿Olvidó la contraseña?")
        ],
      ),
    );
  }

  Widget _crearBoton(){
    return RaisedButton( 
      onPressed: () {},
      shape: RoundedRectangleBorder(  
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 0.0,
      color: Colors.brown,
      textColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical:15.0), 
        child: Text("Iniciar sesión"),
      ),
    );
  }

  Widget _crearEmail(){
    return Container( 
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(  
          icon: Icon(Icons.alternate_email, color: Colors.brown),
          hintText: "ejemplo@correo.com",
          labelText: "Correo electrónico"
        ),
      ),
    );
  }

  Widget _crearPass(){
    return Container( 
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(  
          icon: Icon(Icons.lock_outline, color: Colors.brown),
          labelText: "Contraseña"
        ),
      ),
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
       Positioned(left: 30.0,top: 90.0,child: circulo ),
       Positioned(top: 40.0,right: -20.0,child: circulo ),
       Positioned(bottom: 10.0, right: 100.0,child: circulo ),
       Positioned(bottom: 120.0, right: 40.0,child: circulo ),
       Positioned(top: 40.0, left: 120.0,child: circulo ),

       Container( 
         child: Column(
           children: <Widget>[
             SizedBox(height: 45.0, width: double.infinity,),
             Image( 
               image: AssetImage('assets/img/imagen-blanca.png'),
               height: 150.0,
               width: 150.0,
             ),
             Text("Gestión de pedidos", style: TextStyle(color: Colors.white, fontSize: 18.0),)
           ],
         ),
       )
      ],
    );
  }
}