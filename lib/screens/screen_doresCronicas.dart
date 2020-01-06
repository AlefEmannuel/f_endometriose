import 'package:f_endometriose/classes/queixaPrincipal.dart';
import 'package:f_endometriose/screens/screen_doresMenstruais.dart';
import 'package:f_endometriose/screens/screen_registerUserCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

const appName = 'DateTimePickerFormField Example';

class DoresCronicasScreen extends StatefulWidget {
  @override
  _DoresCronicas createState() => _DoresCronicas();
}

class _DoresCronicas extends State<DoresCronicasScreen> {

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
      appBar: new AppBar(title: new Text("Dores Crônicas"),backgroundColor: Color(0xFF17ead9),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Dor pélvica crônica (ou seja, dor pélvica entre as coxas e o umbigo não relacionada ao período menstrual) por pelo menos 3 meses?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  FlutterSlider(
                    values: [10],
                    max: 10,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'A paciente apresenta alguma dor profunda na relação sexual?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  FlutterSlider(
                    values: [10],
                    max: 10,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'A paciente apresenta dor superficial (na inserção) durante a relação sexual?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  FlutterSlider(
                    values: [10],
                    max: 10,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'A paciente apresenta dor pélvica que permanece por várias horas após a relação sexual?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  FlutterSlider(
                    values: [10],
                    max: 10,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'A paciente apresenta sangramentos fora do período menstrual?',
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
                    'Com qual idade a paciente começou a apresentar sintomas de dor pélvica?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: 'Idade',
                      labelText: 'Idade',
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
                   RadioListTile(
                      value: 'Não lembra',
                      title: Text('Não lembra'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
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