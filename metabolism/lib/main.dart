import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/rotina_alimentar.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metabolism',
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
      backgroundColor: AppColors.light_green,
      appBar: AppBar(
        backgroundColor: AppColors.dark_green,
        title: Text(widget.title),
      ),
      drawer: Drawer(
child:
 ListView(
    children: <Widget>[
       UserAccountsDrawerHeader(
  accountName: Text("Ádan Barbosa Ribeiro"),
  accountEmail: Text("adanbribeiro@gmail.com"),
  decoration: BoxDecoration(
    color: AppColors.dark_green,
  ),
  currentAccountPicture: CircleAvatar(
    backgroundColor: Colors.white,
    child: Text(
      "A",
      style: TextStyle(fontSize: MediaQuery.of(context).size.width/7),
    ),
  ),
),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Dados_Pessoais()));
        },
        title: Text("Dados Pessoais"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Avaliacao_Medica()));
        },
        title: Text("Avaliação Médica"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Rotina_Alimentar()));
        },
        title: Text("Rotina de Alimentação"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Evolucao_Imc()));
        },
        title: Text("Evolução do IMC"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Sindrome_Metabolica()));
        },
        title: Text("Síndrome Metabólica"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Dicas()));
        },
        title: Text("Dicas"),
        trailing: Icon(Icons.arrow_forward),
      ),
        ],
      ),
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
        splashColor: AppColors.dark_green.withAlpha(30),
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
        splashColor: AppColors.dark_green.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/ovos.jpg',
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
        splashColor: AppColors.dark_green.withAlpha(30),
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
        splashColor: AppColors.dark_green.withAlpha(30),
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
        splashColor: AppColors.dark_green.withAlpha(30),
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

      Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/20.0),
  ),
      child: InkWell(
        splashColor: AppColors.dark_green.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          height: MediaQuery.of(context).size.height/4.2,
          child: Column(children:[
            ClipOval(
    child: Image.asset('assets/images/cafe_da_manha/cafe.jpg',
                height:MediaQuery.of(context).size.height/5.5,
                width:MediaQuery.of(context).size.width/2.3 ),
          ),
          Text('Café',
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
      backgroundColor: AppColors.dark_green,
      child: Icon(Icons.arrow_forward),
      onPressed: (){},
    ),
    );
  }
}
