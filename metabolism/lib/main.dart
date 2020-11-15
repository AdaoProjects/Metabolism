import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metabolism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Café da manhã'),
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
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
    child: Column(children:[
    SizedBox(height:MediaQuery.of(context).size.width/15),
 Row(children:
    [SizedBox(width:MediaQuery.of(context).size.width/36.66),
      Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/20.0),
  ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/pao.jpg',
                height:MediaQuery.of(context).size.height/5.5,
                width:MediaQuery.of(context).size.width/2.3 ),
          ),
          Text('Pão',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height / 30)
            ),
          ],
          
          ),
)
            
          ),
      ),
      Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/20.0),
  ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/ovo.jpg',
                height:MediaQuery.of(context).size.height/5.5,
                width:MediaQuery.of(context).size.width/2.3 ),
          ),
          Text('Ovo',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height / 30)
            ),
          ],
          
          ),
)
            
          ),
      ),
    ]
  ), // T
   Row(children:
    [SizedBox(width:MediaQuery.of(context).size.width/36.66),
        Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/20.0),
  ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/cuscuz.jpg',
                height:MediaQuery.of(context).size.height/5.5,
                width:MediaQuery.of(context).size.width/2.3 ),
          ),
          Text('Cuscuz',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height / 30)
            ),
          ],
          
          ),
)
            
          ),
      ),
    Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/20.0),
  ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/leite.jpg',
                height:MediaQuery.of(context).size.height/5.5,
                width:MediaQuery.of(context).size.width/2.3 ),
          ),
          Text('Leite',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height / 30)
            ),
          ],
          
          ),
)
            
          ),
      ),
    ]
  ), // T
   Row(children:
    [SizedBox(width:MediaQuery.of(context).size.width/36.66),
        Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/20.0),
  ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/bacon.jpg',
                height:MediaQuery.of(context).size.height/5.5,
                width:MediaQuery.of(context).size.width/2.3 ),
          ),
          Text('Bacon',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height / 30)
            ),
          ],
          
          ),
)
            
          ),
      ),
    
    ]
  ), // T
    ]
    ),

    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_forward),
      onPressed: (){},
    ),
    );
  }
}
