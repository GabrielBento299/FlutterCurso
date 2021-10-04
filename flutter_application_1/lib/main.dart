import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.add_business),
            onPressed: () {},
          ),
          centerTitle: true,
          elevation: 25,
          title: Text('Praia'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.red[800]])),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.yellow, Colors.deepOrangeAccent])),
      child: Column(
        children: [
          Image.asset(
            'assets/images/foto.jpg',
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.pink])),
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text('Praia do forte',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.yellow,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text('Bahia, Salvador',
                          style: TextStyle(fontSize: 20, color: Colors.teal)),
                    )
                  ],
                ),
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Icon(Icons.star, color: Colors.yellow),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0), child: Text('5555'))
              ])
            ]),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Botao(
                  icon: Icons.call,
                  text: ('Ligar'),
                  onPress: () {},
                ),
                Botao(
                  icon: Icons.location_on,
                  text: ('Mapa'),
                  onPress: () {},
                ),
                Botao(
                  icon: Icons.share,
                  text: ('Compratilhar'),
                  onPress: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                'A Praia do Forte é uma praia situada no distrito homônimo, no município de Mata de São João, no estado da Bahia, no Brasil. Dista cerca de 80 quilômetros da capital do estado, Salvador. Wikipédia'),
          ),
        ],
      ),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({
    this.onPress,
    @required this.icon,
    @required this.text,
  });
  Function onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FlatButton(
            onPressed: onPress,
            child: Column(
                children: [Icon(icon, color: Colors.blue[700]), Text(text)])));
  }
}
