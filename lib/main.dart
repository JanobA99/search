import 'package:flutter/material.dart';
import 'package:schedula_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffDFDFDF),
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Поиск", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,),),
      ),
      body: Container(
        height: 50,
        margin:  EdgeInsets.fromLTRB(16, MediaQuery.of(context).size.height/5, 16, 0),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ResultPage()));
              },
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                color: Color(0xff58AFFF),
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                  child: Text("Найти", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,),)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Color(0xffDFDFDF),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Color(0xffDFDFDF),
                width: 1.0,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Color(0xffDFDFDF),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Color(0xffDFDFDF),
                width: 1.0,
              ),
            ),
          ),
          keyboardType: TextInputType.text,
        ),
      ),
    );
  }
}
