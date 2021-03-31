import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffDFDFDF),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Результат поиска", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: new RichText(
                  text: new TextSpan(
                    children: [
                      new TextSpan(
                        text: 'по запросу: ',
                        style: new TextStyle(color: Color(0xffA6A6A6), fontWeight: FontWeight.w600,),
                      ),
                      new TextSpan(
                        text: '“Название запроса”'.toUpperCase(),
                        style: new TextStyle(color: Colors.blue, fontWeight: FontWeight.w600,),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Найдено: 54", style: TextStyle(color: Color(0xffA6A6A6), fontWeight: FontWeight.w600,),),
            SizedBox(
              height: 8,
            ),
            for(int i=0; i<12; i++)
            Container(
              width: MediaQuery.of(context).size.width-32,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: EdgeInsets.fromLTRB(16, 12, 16, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Color(0xffDFDFDF))
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Название репозитория", style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w600,),),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/men.jpg"
                                    )
                                  )
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text("Username", style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w400, fontSize: 12),),
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                        color: Color(0xffA6A6A6),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text("67", style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.w400, fontSize: 12),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8,),
                  Divider(
                    thickness: 1,
                    color: Color(0xffDFDFDF),
                  ),
                  SizedBox(height: 12,),
                  RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                          text: 'Обновлено: ',
                          style: new TextStyle(color: Color(0xffA6A6A6), fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        new TextSpan(
                          text: '3 января',
                          style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
