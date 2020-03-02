import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.arrow_back),
          title: Text('NBA Lifestyle'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  height: 800.0,
                  padding: EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('images/mou.jpg'),
                            radius: 30.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120.0, top: 15.0),
                            child: Text(
                              'Jose Mourinho',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Text(
                            'The best duo in the NBA (Russell Westbrook and James Harden) laughing at the comments on the beef between James and Giannis.',
                            style: TextStyle(fontSize: 17.0)),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/duo.webp',
                            //scale: 4,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(height: 12.0),
                            IconButton(
                              icon: Icon(Icons.favorite),
                              color: Colors.red,
                              onPressed: () {},
                            ),
                            Text('130K'),
                            IconButton(
                                icon: Icon(Icons.message),
                                color: Colors.indigoAccent,
                                onPressed: () {}),
                            Text('896'),
                            Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Text('12 hours ago'),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 110.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: RaisedButton.icon(
                                icon: Icon(Icons.favorite),
                                onPressed: () {},
                                label: Text('Like'),
                                color: Colors.amberAccent,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: RaisedButton.icon(
                                icon: Icon(Icons.question_answer),
                                onPressed: () {},
                                label: Text('Comment'),
                                color: Colors.amberAccent,
                              ),
                            ),
                          ),
                        ],
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
