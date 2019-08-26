import 'package:f_endometriose/screens/screen_home.dart';
import 'package:flutter/material.dart';

class RegisterUserCont extends StatefulWidget {
  RegisterUserCont(String nome, String sobrenome, String estadoCivil);

  @override
  _RegisterUserContState createState() => _RegisterUserContState();
}

class _RegisterUserContState extends State<RegisterUserCont> {

  DateTime _dataInfo;
  String etnia = "";
  void valueEtnia(String value){
    setState(() {
     etnia = value; 
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
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: 'Registro AGHU',
                      labelText: 'Registro AGHU',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),                  
                  TextField(
                    decoration: new InputDecoration(
                      hintText: ('$_dataInfo'),
                      labelText: 'Data',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      icon: Icon(Icons.calendar_today),
                      
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  
                  FlatButton(                    
                      child: new Row(
                        children: <Widget>[
                          new Text('$_dataInfo'),
                          new Icon(Icons.calendar_today),                                              
                        ],
                      ),
                      
                      onPressed: () async {
                        final dtPick = await showDatePicker(
                          context: context,
                          initialDate: new DateTime.now(),
                          firstDate: new DateTime(2000),
                          lastDate: new DateTime(2100));
                        if (dtPick != null && dtPick != _dataInfo) {
                            setState((){
                                _dataInfo = dtPick;
                            });
                        }
                      },                                        
                  ), 
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'Etnia:',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Branco',
                      title: Text('Branco'),
                      groupValue: etnia,
                      onChanged: (String value){
                        valueEtnia(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Negro',
                      title: Text('Negro'),
                      groupValue: etnia,
                      onChanged: (String value){
                        valueEtnia(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Pardo',
                      title: Text('Pardo'),
                      groupValue: etnia,
                      onChanged: (String value){
                        valueEtnia(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Indígena',
                      title: Text('Indígena'),
                      groupValue: etnia,
                      onChanged: (String value){
                        valueEtnia(value);
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
                        child: Text('Concluir'.toUpperCase(),
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