import 'package:flutter/material.dart';

import 'screen_home.dart';

class ScreenLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyScreenLogin(title: 'Página de Login'),
    );
  }
}

class MyScreenLogin extends StatefulWidget {
  MyScreenLogin({Key key, this.title}) : super(key: key);
  final String title;

  @override
 _MyScreenLogin createState() => _MyScreenLogin();
}

class _MyScreenLogin extends State<MyScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5, //pega a altura da tela e divide por 2.5 (tamanho do gradient)
              //Box decoration para realizar as alterações no front 
              decoration: BoxDecoration(
                gradient: LinearGradient( //Chama o gradient
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFF555C0),
                    Color(0xFFF986D3),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90), //Deixa o canto do gradient arrendondado
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //Coloca o icone no meio do gradient
                children: <Widget>[ 
                  SizedBox(child: Image.asset("images/uterus.png", height: 150, width: 150,), ),                 
                  
                ],
              ),
            ),

            //Container contendo o formulário de login
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              padding: EdgeInsets.only(top: 50), //Define uma altura para não pegar no gradiente de cima
              child: Column(
                children: <Widget>[
                  Container( //Input de email
                    width: MediaQuery.of(context).size.width/1.2, //O tamanho do campo na largura
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 4,
                      left: 16,
                      right: 20,
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50), //para deixar o campo arrendondado
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow( //Aplica a sombra ao redor do campo
                          color: Colors.black12,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(                        
                        icon: Icon(Icons.email, color: Color(0xFFF986D3),),
                        hintText: 'Email',
                      ),
                    ),
                  ),

                  Container( //input de senha
                    width: MediaQuery.of(context).size.width/1.2, //O tamanho do campo na largura
                    height: 50,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                      top: 4,
                      left: 16,
                      right: 20,
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50), //para deixar o campo arrendondado
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow( //Aplica a sombra ao redor do campo
                          color: Colors.black12,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(                        
                        icon: Icon(Icons.vpn_key, color: Color(0xFFF986D3),),
                        hintText: 'Senha',
                      ),
                    ),
                  ),

                  Align( //Para colocar o campo cadastre-se
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 32,
                      ),
                      child: Text('Esqueceu sua senha?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),                    
                  ),
                  Spacer(),

                  new GestureDetector(
                    onTap: () async {      
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                    },
                    child: new Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2, //pega o tamanho da tela e divide por 1.2 que é a largura do botao
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF555C0),
                            Color(0xFFF986D3),
                          ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)), //Deixa o botao redondo
                      ),
                      child: Center( //Deixa o texto do botao no centro
                        child: Text('Entrar'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),                    
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
