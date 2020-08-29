import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Flutter',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ), //Barra do aplicativo
      drawer: Drawer( //Declara menu lateral que abre na esquerda
        child: ListView(
          padding: EdgeInsets.zero, //Padding de toda parte externa do menu
          children: <Widget>[
            DrawerHeader( //Parte superior do menu
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/icon_flutter.png'),
                ),
              ),
              child: Stack( //Deixa você escolher aonde seus Widgets vão ficar na tela
                children: <Widget>[
                  Positioned( //Define a posição dos Widgets
                    bottom: 12.0,
                    left: 16.0,
                    child: Text(
                        'Flutter Step-by-Step',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile( //Começa a preencher os icones do menu em si
              title: Row( //Configura os itens na linha
                children: <Widget>[
                  Icon(Icons.home), //Icone da linha
                  Padding(
                      padding: EdgeInsets.only(left: 8.0), //Espaço que o texto vai ter do icone
                    child: Text('Home'), //Texto declarado como o filho
                  ),
                ],
              ),
              onTap: () { //Define ação de quando icone for tocado
                Navigator.pop(context); //Fecha o menu depois que este icone for pressionado
                Navigator.of(context).pop(); //Ativa gestos para abrir e fechar drawer
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.account_circle),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Perfil'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}