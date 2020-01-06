import 'package:f_endometriose/classes/queixaPrincipal.dart';
import 'package:f_endometriose/screens/screen_doresMenstruais.dart';
import 'package:f_endometriose/screens/screen_registerUserCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

const appName = 'DateTimePickerFormField Example';

class AchadosExamesScreen extends StatefulWidget {
  @override
  _AchadosExames createState() => _AchadosExames();
}

class _AchadosExames extends State<AchadosExamesScreen> {

  String estadoCivil = "";
  String nome = "";
  String sobrenome = "";

  void valueEstadoCivil(String value){
    setState(() {
     estadoCivil = value; 
    });
  }

  String gravidez = "";
  void valueGravidez(String value){
    setState(() {
     gravidez = value; 
    });
  }
  
  //value da pergunta relacionada a qualidade de vida
  double _lowerValue = 0;
  double _upperValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Achados Exames"),backgroundColor: Color(0xFF17ead9),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Presença de massas anexiais palpáveis?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),          
                  Text(
                    'Presença de espessamento do Ligamento Utero-sacro?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),          
                  Text(
                    'Presença de nódulos em fundo de saco posterior?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),      
                  Text(
                    'Presença de dor a mobilização do colo uterino?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),    
                  Text(
                    'Sinais sugestivos de endometriose?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),       
                  Text(
                    'Sinais sugestivos de endometriose?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),     
                  Text(
                    'Sinais sugestivos de endometriose?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),     
                  Text(
                    'Encontrado foco de endometriose?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),       
                  Text(
                    'Encontrada aderência pélvica?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),         
                  
                  
                  GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new DoresMenstruaisScreen()));
                    },
                    child: new Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2, //pega o tamanho da tela e divide por 1.2 que é a largura do botao
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF17ead9),
                            Color(0xFF17ead9),
                          ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)), //Deixa o botao redondo
                      ),
                      child: Center( //Deixa o texto do botao no centro
                        child: Text('Continuar'.toUpperCase(),
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