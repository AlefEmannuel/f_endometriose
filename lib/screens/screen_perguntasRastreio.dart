import 'package:f_endometriose/classes/queixaPrincipal.dart';
import 'package:f_endometriose/screens/screen_doresMenstruais.dart';
import 'package:f_endometriose/screens/screen_registerUserCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

const appName = 'DateTimePickerFormField Example';

class PerguntasRastreioScreen extends StatefulWidget {
  @override
  _PerguntasRastreio createState() => _PerguntasRastreio();
}

class _PerguntasRastreio extends State<PerguntasRastreioScreen> {

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
      appBar: new AppBar(title: new Text("Perguntas de Rastreio"),backgroundColor: Color(0xFF17ead9),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'A paciente teve que faltar à escola ou ao trabalho devido à dor pélvica?',
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
                    'A paciente já esteve no pronto socorro pela dor pélvica, mas não recebeu um diagnóstico específico?',
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
                    'A paciente teve que tomar narcóticos, analgésicos ou anti-inflamatórios (ex: morfina, tramal, dolantina, buscopam, ibuprofeno) para a dor?',
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
                    'A paciente fez ou está em uso de supressão hormonal (diga-se uso de pílulas anticoncepcionais, injeções, SIU-LNG) para dores pélvicas menstruais?',
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
                    'A paciente já fez alguma cirurgia ou laparoscopia diagnóstica para dor pélvica ou infertilidade?',
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
                    'Se sim, que tipo de tratamento a paciente recebeu?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  TextField(
                    decoration: new InputDecoration(
                      hintText: 'Tratamento',
                      labelText: 'Tratamento',
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