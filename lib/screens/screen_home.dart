import 'package:flutter/material.dart';

import 'screen_login.dart';


class HomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Página inicial"),backgroundColor: Color(0xFFF986D3),),
      drawer: Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Color(0xFFF986D3),
              ),
            ),
            ListTile(
              title: Text('Aplicar Questionario'),
              trailing: new Icon(Icons.assignment),
              onTap: (){
                //adicionar algo
              },
            ),
            ListTile(
              title: Text('Cadastrar paciente'),
              trailing: new Icon(Icons.person_add),
              onTap: (){
               
              },
            ),
            ListTile(
              title: Text('Sair'),
              trailing: new Icon(Icons.clear, color: Colors.red,),
              onTap: (){
               Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => ScreenLogin()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
