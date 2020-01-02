import 'package:f_endometriose/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class RegisterUserCont extends StatefulWidget {
  RegisterUserCont(String nome, String sobrenome, String estadoCivil);

  @override
  _RegisterUserContState createState() => _RegisterUserContState();
}

class _RegisterUserContState extends State<RegisterUserCont> {

  DateTime _dataInfo;
  //value da pergunta relacionada a tabagismo
  String tabagismo = "";
  void valueTabagismo(String value){
    setState(() {
     tabagismo = value; 
    });
  }
  //value da pergunta relacionada aos parentes com endometriose
  String parentes = "";
  void valueParentes(String value){
    setState(() {
     parentes = value; 
    });
  }

  //value da pergunta relacionada a qualidade de vida
  double _lowerValue = 0;
  double _upperValue = 10;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(title: new Text("Registrar Paciente"),backgroundColor: Color(0xFF6078ea),),
      body: SingleChildScrollView (
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: 'Idade da primeira menstruação',
                      labelText: 'Idade da primeira menstruação',
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
                    'História de tabagismo:',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: tabagismo,
                      onChanged: (String value){
                        valueTabagismo(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: tabagismo,
                      onChanged: (String value){
                       valueTabagismo(value);
                      },
                      activeColor: Colors.blue,
                  ),                
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'A paciente apresenta parentes de primeiro grau com história de endometriose (mãe, filha ou irmã)?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: 'Sim',
                      title: Text('Sim'),
                      groupValue: parentes,
                      onChanged: (String value){
                        valueParentes(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: 'Não',
                      title: Text('Não'),
                      groupValue: parentes,
                      onChanged: (String value){
                        valueParentes(value);
                      },
                      activeColor: Colors.blue,
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
                            Color(0xFF6078ea),
                            Color(0xFF6078ea),
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