import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = 'Lucida Grande';
  //DateTime now = DateTime.now();
  String formattedDate = DateFormat('EEE, M/d/y').format(DateTime.now());
  var name2 = 'Harvey Specter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0.0,
          title: Text(
            "$formattedDate",
            style: TextStyle(
              color: Colors.black.withOpacity(0.3),
              fontSize: 25.0,
            ),
          ),
        ),
        body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          scrollDirection: Axis.vertical,
          children: [
            new Container(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              //color: Colors.white,
              child: Text(
                'Hi,$name',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new GestureDetector(
              onTap: () => print('Search initiated'),
              child: new Center(
                child: new Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  // width: 400.0,
                  // height: 50.0,
                  //color: Colors.black12,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.search,
                          size: 30.0,
                          color: Colors.green[600],
                        ),
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              height: 250.0,
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => print('Inside first'),
                    child: Container(
                      width: 200,
                      //color: Colors.orangeAccent,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('Inside second'),
                    child: Container(
                      width: 200,
                      //color: Colors.orangeAccent,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[700],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('Inside third'),
                    child: Container(
                      width: 200,
                      //color: Colors.orangeAccent,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('Inside fourth'),
                    child: Container(
                      width: 200,
                      //color: Colors.orangeAccent,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[700],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  'Invitations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                )),
            new Center(
              child: new Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: EdgeInsets.all(10.0),
                // width: 400.0,
                height: 80.0,
                //color: Colors.black12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.mail_outline,
                        size: 30.0,
                        color: Colors.green[600],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 280.0,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '$name2',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '$name2 send you a request.',
                              style: TextStyle(
                                color: Colors.black.withOpacity(.3),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.send,
                        size: 30.0,
                        color: Colors.green[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
