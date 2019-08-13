import 'package:f_endometriose/screens/screen_home.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {

  String _jk = "";

  void valueJk(String value){
    setState(() {
     _jk = value; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Registrar Usuário"),backgroundColor: Color(0xFF3CB371),),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: new InputDecoration(
                      hintText: 'Nome',
                      labelText: 'Nome',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  TextField(
                    decoration: new InputDecoration(
                      hintText: 'Sobrenome',
                      labelText: 'Sobrenome',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'Raça:',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Negro',
                      title: Text('Negro'),
                      groupValue: _jk,
                      onChanged: (String value){
                        valueJk(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Branco',
                      title: Text('Branco'),
                      groupValue: _jk,
                      onChanged: (String value){
                        valueJk(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Pardo',
                      title: Text('Pardo'),
                      groupValue: _jk,
                      onChanged: (String value){
                        valueJk(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Indígena',
                      title: Text('Indígena'),
                      groupValue: _jk,
                      onChanged: (String value){
                        valueJk(value);
                      },
                      activeColor: Colors.blue,
                  ),

                  Padding(padding: EdgeInsets.only(top: 20),),
                  GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                    },
                    child: new Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2, //pega o tamanho da tela e divide por 1.2 que é a largura do botao
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF3CB371),
                            Color(0xFF3CB371),
                          ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)), //Deixa o botao redondo
                      ),
                      child: Center( //Deixa o texto do botao no centro
                        child: Text('Avançar'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),                    
                    ),
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}