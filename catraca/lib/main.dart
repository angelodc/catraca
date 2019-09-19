import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

var contador = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
        fontFamily: 'Merriweather',
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Contador Catraca",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Merriweather"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Numero:",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: const Color(0xFFffffff),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Merriweather"),
                  ),
                  new Text(
                    contador.toString(),
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFFffffff),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  )
                ])
          ]),
      bottomNavigationBar: new BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              if (index == 0) {
                if (contador > 0) {
                  contador--;
                }
              } else {
                contador++;
               
              }
            });
          },
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.exposure_neg_1),
              title: new Text(''),
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.exposure_plus_1),
              title: new Text(''),
            )
          ]),
    );
  }
}
