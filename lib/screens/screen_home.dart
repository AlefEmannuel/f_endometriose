
import 'package:f_endometriose/screens/screen_login.dart';
import 'package:f_endometriose/screens/screen_queixaPrincipal.dart';
import 'package:f_endometriose/screens/screen_registerPatient1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  AnimationController animationController;
  Animation animation;

  void mylistener(status) {
    if (status == AnimationStatus.completed) {
      animationController.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceInOut,
    ))
      ..addStatusListener(mylistener);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: new BottomAppBar(
        elevation: 0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openEndDrawer();
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ListTile(
                  title: Text('Cadastrar Paciente'),
                  trailing: Icon(Icons.person_add),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new RegisterUser())),
                  },
                ),
                ListTile(
                  title: Text('Formulário'),
                  trailing: Icon(Icons.person_add),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QueixaPrincipalScreen())),
                  },
                ),
                ListTile(
                  title: Text('Home'),
                  trailing: Icon(Icons.home),
                  onTap: () => {},
                ),
                ListTile(
                  title: Text('Configurações'),
                  trailing: Icon(Icons.settings),
                  onTap: () => {},
                ),
                ListTile(
                  title: Text('Sair'),
                  trailing: Icon(Icons.exit_to_app, color: Colors.red,),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ScreenLogin())),
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
