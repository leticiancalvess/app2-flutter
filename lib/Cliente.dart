import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  @override
  _ClienteState createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cliente')),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset('images/detalhe_cliente.png'),
              Padding(padding: EdgeInsets.all(20), child: Text('Clientes'))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset('images/cliente1.png'),
          ),
          Text('Empresa de software'),
          Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('images/cliente2.png')),
          Text('Empresa de auditoria')
        ],
      )),
    );
  }
}
