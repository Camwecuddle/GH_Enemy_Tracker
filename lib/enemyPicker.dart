import 'package:flutter/material.dart';

class EnemyPicker extends StatefulWidget {
  @override
  _EnemyPickerState createState() => _EnemyPickerState();
}

class _EnemyPickerState extends State<EnemyPicker> {
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
                'Code: ',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Expanded(
            flex: 5,
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
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                      Image.network(
                        'https://picsum.photos/250?image=9',
                        height: MediaQuery.of(context).size.width * .35,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                    ],
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
                    'Done',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  onPressed: () => {
                    Navigator.of(context).popUntil((route) => route.isFirst),
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
