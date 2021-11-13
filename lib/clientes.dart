import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  const Clientes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: pantalla(),
    );
  }
}
class pantalla  extends StatefulWidget {

  @override
  _pantallaState createState() => _pantallaState();
}

class _pantallaState extends State<pantalla> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("Nuestros Clientes")),
      ),
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 5)
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 60,right: 60),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Nombre Completo",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 60,right: 60),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Direccion",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 60,right: 60),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Telefono-Celular",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 60,right: 60),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Correo Electronico",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 60,right: 60),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Escriba Contraseña",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 60,right: 60),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text("Registrarse",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),

                onPressed: () {

                },
              )
          ),
        ],
      ),
    );
  }
}