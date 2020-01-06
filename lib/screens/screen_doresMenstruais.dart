import 'package:f_endometriose/classes/queixaPrincipal.dart';
import 'package:f_endometriose/screens/screen_perguntasRastreio.dart';
import 'package:f_endometriose/screens/screen_registerUserCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

const appName = 'DateTimePickerFormField Example';

class DoresMenstruaisScreen extends StatefulWidget {
  @override
  _DoresMenstruais createState() => _DoresMenstruais();
}

class _DoresMenstruais extends State<DoresMenstruaisScreen> {

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
      appBar: new AppBar(title: new Text("Dores Vinculadas ao Período Menstrual"),backgroundColor: Color(0xFF17ead9),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'A paciente apresenta períodos menstruais dolorosos que afetam sua vida diária?',
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
                    'A paciente apresenta dor tipo cólica menstrual, mas sem sangramento?',
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
                    'A paciente apresenta dor lombar que piora com a menstruação?',
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
                    'A paciente apresenta sintomas intestinais que se agravam no período menstrual?',
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
                    'Durante o período menstrual, a paciente apresenta piora da dor ao urinar, aumento da frequência urinária ou urgência?',
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
                    'Qual a duração da menstruação da paciente?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: 'Duração em dias',
                      labelText: 'Duração em dias',
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
                  Padding(padding: EdgeInsets.only(top: 30),),
                  GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new PerguntasRastreioScreen()));
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