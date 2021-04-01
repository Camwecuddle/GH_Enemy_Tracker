import 'package:flutter/material.dart';
import 'enemyFunctions.dart';
import 'enemyPicker.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class EnemyTypes extends StatefulWidget {
  @override
  _EnemyTypesState createState() => _EnemyTypesState();
}

class _EnemyTypesState extends State<EnemyTypes> {
  var selectedEnemies = [
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
  ];

  var enemyData;

  int num = 0;

  void initState() {
    super.initState();
    num++;
    print("cam");
    enemyData = loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 30, top: 50),
                alignment: Alignment.topLeft,
                child: Text(
                  'Enemies $num',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  padding: EdgeInsets.all(0),
                  // color: Colors.red[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            'https://picsum.photos/250?image=9',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          Image.network(
                            'https://picsum.photos/250?image=9',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          Image.network(
                            'https://picsum.photos/250?image=9',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          Image.network(
                            'https://picsum.photos/250?image=9',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            'https://picsum.photos/250?image=9',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          Image.network(
                            '',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          Image.network(
                            '',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          Image.network(
                            '',
                            height: MediaQuery.of(context).size.width * .2,
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 3,
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // margin: EdgeInsets.only(left: 20),

                        child: FutureBuilder(
                            future: enemyData,
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              var jsonEnemyData = jsonDecode(snapshot.data);
                              var smallEnemyList =
                                  jsonEnemyData['smallMonstersList'];
                              var enemyNames = [];

                              smallEnemyList.forEach((element) {
                                (element as Map<String, dynamic>)
                                    .forEach((key, value) {
                                  enemyNames.add(key);
                                });
                              });

                              if (snapshot.hasData) {
                                return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot == null
                                        ? 0
                                        : enemyNames.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      // right now small enemis list is a list with one big json object that i can hopefully parse into smaller ones without having to go and put brackets around each enemy type
                                      // looks like it worked

                                      return Container(
                                        padding: EdgeInsets.only(left: 20),
                                        margin: EdgeInsets.only(right: 20),
                                        height: 200,
                                        width: 200,
                                        child: Center(
                                          child: AspectRatio(
                                            aspectRatio: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                alignment:
                                                    FractionalOffset.center,
                                                image: NetworkImage(
                                                    '${smallEnemyList[0][enemyNames[index]]['picture']}'),
                                              )),
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              }
                              if (snapshot.hasError) {
                                return Icon(
                                  Icons.error_outline,
                                  color: Colors.red,
                                  size: 60,
                                );
                              } else {
                                return SizedBox(
                                  child: CircularProgressIndicator(),
                                  width: 60,
                                  height: 60,
                                );
                              }
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.blue[300],
                child: Center(
                  child: TextButton(
                    child: Text(
                      'Ok',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return EnemyPicker();
                        }),
                      )
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
