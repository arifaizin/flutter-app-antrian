import 'package:flutter/material.dart';
import 'package:flutter_app/list.dart';
import 'package:flutter_app/login_screen_3.dart';

void main() => runApp(MenuScreen());

class MenuScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Menu Utama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Main Menu',
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new myCardLayout(theIcon: Icons.headset, theText: "Headset"),
              new myCardLayout(theIcon: Icons.mic, theText: "Mic"),
              new myCardLayout(theIcon: Icons.speaker, theText: "Speaker"),
            ],
          ),
        )
    );
  }


}

class myCardLayout extends StatelessWidget {

  final IconData theIcon;
  final String theText;

  myCardLayout({Key key, this.theIcon, this.theText}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute<Null>(
                builder: (context) => ListScreen()
            ));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage('assets/images/mountains.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(theIcon, size: 40.0, color: Colors.white,),
                  title: Text(theText, style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  subtitle: Text('tes data', style: TextStyle(color: Colors.white),),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text("Lihat detail", style: TextStyle(color: Colors.white,),),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute<Null>(
//                        builder: (BuildContext context) {
//                          return MenuScreen();
//                        },
                          builder: (context) => ListScreen()
                          ));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
