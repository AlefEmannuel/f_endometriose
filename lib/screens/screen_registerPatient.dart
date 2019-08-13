import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import '../classes/cities.dart';



class RegisterPatient extends StatefulWidget {

  @override
  _MyRegisterPatient createState() => _MyRegisterPatient();
}

class _MyRegisterPatient extends State<RegisterPatient> {
  City selectedCity;
  var controller = new MaskedTextController (mask: '000.000.000-00');
  List<City> citys = <City>[const City('Natal'), const City('Macaiba'), const City('Parnamirim'),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Registrar Paciente"),backgroundColor: Color(0xFF3CB371),),
      body: Center(       
        child: Form(
          child: Column(children: <Widget>[
            TextFormField( 
              decoration: InputDecoration(hintText: 'Nome completo'),
            ),
            TextFormField( 
              decoration: InputDecoration(hintText: 'Idade'),
              keyboardType: TextInputType.number,
            ),
            TextFormField( 
              decoration: InputDecoration(hintText: 'Cidade'),
            ),
            new TextField(controller: controller, keyboardType: TextInputType.number, decoration: InputDecoration(hintText: 'CPF'),),
            new DropdownButton<City>(
              hint: new Text("Selecione a cidade:"),
              value: selectedCity,
              onChanged: (City newValue){
                setState(() {
                  selectedCity = newValue;         
                });
              },
              items: citys.map((City city){
                return new DropdownMenuItem<City>(
                  value: city,
                  child: new Text(
                    city.name,
                    style: new TextStyle(color: Colors.black87),
                  ),
                );
              }).toList(),
            ),
            RaisedButton(
              onPressed: (){ },
              child: Text('Cadastrar'),
            )
          ],),
      ),
      )
    );
  }
}
