import 'package:f_endometriose/classes/queixaPrincipal.dart';
import 'package:f_endometriose/screens/screen_doresCronicas.dart';
import 'package:f_endometriose/screens/screen_registerUserCont.dart';
import 'package:flutter/material.dart';

const appName = 'DateTimePickerFormField Example';

class QueixaPrincipalScreen extends StatefulWidget {
  @override
  _QueixaPrincipal createState() => _QueixaPrincipal();
}

class _QueixaPrincipal extends State<QueixaPrincipalScreen> {
  QueixaPrincipal selectedQueixaPrincipal;
  List<QueixaPrincipal> queixasPrincipais = <QueixaPrincipal>[
    const QueixaPrincipal('Dismenorreia Incapacitante'),
    const QueixaPrincipal('Dor pélvica acíclica'), 
    const QueixaPrincipal('Infertilidade'),
    const QueixaPrincipal('Dispareunia de Profundidade'),
    const QueixaPrincipal('Disquezia cíclica'),
    const QueixaPrincipal('Disúria Cíclica'),
    const QueixaPrincipal('Nenhum se aplica/Outras')];


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Queixa Principal"),backgroundColor: Color(0xFF17ead9),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  
                  DropdownButton(
                    hint: new Text("Selecione a queixa principal:"),
                    value: selectedQueixaPrincipal,
                    onChanged: (QueixaPrincipal newValue){
                      setState(() {
                        selectedQueixaPrincipal = newValue;         
                      });
                    },
                    items: queixasPrincipais.map((QueixaPrincipal queixaPrincipal){
                      return new DropdownMenuItem<QueixaPrincipal>(
                        value: queixaPrincipal,
                        child: new Text(
                          queixaPrincipal.name,
                          style: new TextStyle(color: Colors.black87),
                        ),
                      );
                    }).toList(),
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'A paciente já engravidou alguma vez?',
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
                    'Se sim, quantas gestações?',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  RadioListTile(
                      value: '0',
                      title: Text('0'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: '1',
                      title: Text('1'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  RadioListTile(
                      value: '+1',
                      title: Text('+1'),
                      groupValue: gravidez,
                      onChanged: (String value){
                        valueGravidez(value);
                      },
                      activeColor: Colors.blue,
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'Se não, a paciente apresenta sinais de infertilidade?',
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
                    'Se sim, há quanto tempo a paciente vem tentando engravidar? (aproximação em meses)',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: 'Tempo em meses',
                      labelText: 'Tempo em meses',
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
                  GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new DoresCronicasScreen()));
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