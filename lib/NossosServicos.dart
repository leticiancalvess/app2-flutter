import 'package:flutter/material.dart';

class NossosServicos extends StatefulWidget {
  @override
  _NossosServicosState createState() => _NossosServicosState();
}

class _NossosServicosState extends State<NossosServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Serviços"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('images/detalhe_servico.png'),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Nossos Serviços'))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Consultoria'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Cálculo de preços'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Acompanhamento de Projetos'),
              )
            ],
          ),
        ));
  }
}
