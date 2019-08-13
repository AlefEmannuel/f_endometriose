import 'package:flutter/material.dart';

import 'screen_login.dart';
import 'screen_registerPatient.dart';


class HomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Página inicial"),backgroundColor: Color(0xFF3CB371),),
      drawer: Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Vai ter alguma coisa aqui'),
              decoration: BoxDecoration(
                color: Color(0xFF3CB371),
              ),
            ),
            ListTile(
              title: Text('Fazer Questionário'),
              trailing: new Icon(Icons.assignment),
              onTap: (){
                //adicionar algo
              },
            ),
            ListTile(
              title: Text('Cadastrar paciente'),
              trailing: new Icon(Icons.person_add),
              onTap: (){
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => RegisterPatient()),
                );
              },
            ),
            ListTile(
              title: Text('Sair'),
              trailing: new Icon(Icons.exit_to_app, color: Colors.red,),
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
