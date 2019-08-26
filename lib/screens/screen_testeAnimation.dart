import 'package:f_endometriose/screens/screen_registerUser.dart';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

class AnimationTeste extends StatefulWidget {
  @override
  _AnimationTesteState createState() => _AnimationTesteState();
}

class _AnimationTesteState extends State<AnimationTeste> {

  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: new AppBar(title: new Text("Registrar Usuário"),backgroundColor: Color(0xFF3CB371),),
      body: Container(
        child: Column(
          children: <Widget>[
            Animator(
               duration: Duration(milliseconds: 2000),
               builder: (anim) => Opacity(
                 opacity: anim.value,
                 child: FlutterLogo(
                   size: 200,
                 ),
               ),
             ),
             
             Padding(padding: EdgeInsets.only(top: 40),),

             Animator(
               tween: Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0)),
               duration: Duration(milliseconds: 800),
               builder: (anim) => FractionalTranslation(
                 translation: anim.value,
                  child: GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new RegisterUser()));
                    },
                    child: new Container(
                      alignment: Alignment.bottomRight,
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.5, //pega o tamanho da tela e divide por 1.2 que é a largura do botao
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFFFFFFF),
                          ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                        BoxShadow( //Aplica a sombra ao redor do campo
                          color: Colors.black12,
                          blurRadius: 5,
                        )
                      ], //Deixa o botao redondo
                      ),
                      child: Center( //Deixa o texto do botao no centro
                        child: Text('Cadastre-se'.toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFF3CB371),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),                    
                    ),
                  )
               ),
             ),
            ]
          ),       
      ),
     );
  }
}