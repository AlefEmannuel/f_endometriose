import 'package:f_endometriose/screens/screen_registerUserCont.dart';
import 'package:flutter/material.dart';

const appName = 'DateTimePickerFormField Example';

class RegisterUser extends StatefulWidget {
  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  String estadoCivil = "";
  String nome = "";
  String sobrenome = "";

  void valueEstadoCivil(String value){
    setState(() {
     estadoCivil = value; 
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
                    onChanged: (String nomeResult){
                      setState(() {
                       nome = nomeResult;
                       print(nome); 
                      });
                    }
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
                    onChanged: (String sobrenomeResult){
                      setState(() {
                       nome = sobrenomeResult;
                       print(nome); 
                      });
                    }
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'Estado Civil:',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Solteira',
                      title: Text('Solteira'),
                      groupValue: estadoCivil,
                      onChanged: (String value){
                        valueEstadoCivil(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Casada',
                      title: Text('Casada'),
                      groupValue: estadoCivil,
                      onChanged: (String value){
                        valueEstadoCivil(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Divorciada',
                      title: Text('Divorciada'),
                      groupValue: estadoCivil,
                      onChanged: (String value){
                        valueEstadoCivil(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Viúva',
                      title: Text('Viúva'),
                      groupValue: estadoCivil,
                      onChanged: (String value){
                        valueEstadoCivil(value);
                      },
                      activeColor: Colors.blue,
                  ),

                  Padding(padding: EdgeInsets.only(top: 20),),
                  GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new RegisterUserCont(nome, sobrenome, estadoCivil)));
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