import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage() //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    print("inside build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: InkWell(
        onTap: (){
          setState(() {
            print("$index");
            index = index +1;
          });
        },
        child: Center(child: Text("Text $index"),),
      ),
    );
  }
}

class myStateless extends StatelessWidget{
  int index =0;
  @override
  Widget build(BuildContext context) {
    print("inside build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: InkWell(
        onTap: (){
            print("$index");
            index = index +1;
        },
        child: Center(child: Text("Text $index"),),
      ),
    );
  }

}



