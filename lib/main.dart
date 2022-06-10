import 'package:flutter/material.dart';
import 'package:primeiro_projeto/SegundaPagina.dart';
import 'package:primeiro_projeto/NossosServicos.dart';
import 'package:primeiro_projeto/Cliente.dart';
import 'package:primeiro_projeto/Contato.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeStateful()));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.green, title: Text("ATM Consultoria")),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegundaPagina()));
                    },
                    child: Image.asset('images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cliente()));
                    },
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NossosServicos()));
                    },
                    child: Image.asset('images/menu_servico.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contato()));
                    },
                    child: Image.asset('images/menu_contato.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
