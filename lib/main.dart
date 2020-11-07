import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(AppMagicBall());

class AppMagicBall extends StatelessWidget {
  const AppMagicBall({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Magic Ball",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAGIC-LUCIA"),
      ),
      body: ListView(
        children: <Widget>[
          headerSection(), //titulo
          imageSection(), //imagen
          buttonSection(), //boton
          fondSection(),
          /*textSection(),*/ //el texto
        ],
      ),

      /*Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.lime,
                Colors.lime
              ], //cambia el fondo
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      ), */
    );
  }

  Container fondSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.lime[300], Colors.lime], //cambia el fondo
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    );
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: () {},
        elevation: 0.0,
        color: Colors.purple,
        child: Text(
          "Lucky",
          style: TextStyle(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  Container headerSection() {
    return Container(
      margin: EdgeInsets.only(top: 50.0), //titulo
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Text(
        "MAGIC-LUCIA",
        style: TextStyle(
            color: Colors.black54, fontSize: 40.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container imageSection() {
    return Container(
      child: Image.network(
          "https://image.freepik.com/vector-gratis/ilustracion-bola-magica-adecuada_75817-986.jpg"),
    );
  }
}
