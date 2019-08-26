import 'package:f_endometriose/screens/screen_testeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'screen_login.dart';


class HomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation animation;

  void mylistener(status){
    if(status == AnimationStatus.completed){
    animationController.forward();
    }
  }

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceInOut,
     ))..addStatusListener(mylistener);
     animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(title: new Text("Página inicial"),backgroundColor: Color(0xFF3CB371),),
      endDrawer: Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[            
            ListTile(
              title: Text('Fazer Questionário'),
              trailing: new Icon(Icons.assignment),
              onTap: (){
                //adicionar algo
              },
            ),
            ListTile(
              title: Text('Cadastrar paciente'),
              trailing: new Icon(Icons.person_add),
              onTap: (){
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => AnimationTeste()),
                );
              },
            ),
            ListTile(
              title: Text('Sair'),
              trailing: new Icon(Icons.exit_to_app, color: Colors.red,),
              onTap: (){
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => ScreenLogin()),
                );
              },
            )
          ],
        ),
      ),
      body: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) =>
        Transform(
          transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
            child: Container(
              child: new Column(
                children: <Widget>[
                  Text('Testando essa animação',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
            ),          
        ),
      ),
    );
  }
}
