import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';

class Rotina_Alimentar extends StatefulWidget {
  @override
  _Rotina_AlimentarState createState() => _Rotina_AlimentarState();
}

class _Rotina_AlimentarState extends State<Rotina_Alimentar> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light_blue,
      appBar: AppBar(
        backgroundColor: AppColors.dark_blue,
        centerTitle: true,
        title: Text("Rotina Alimentar"),
      ),
      drawer: Drawer(
child:
 ListView(
    children: <Widget>[
       UserAccountsDrawerHeader(
  accountName: Text("Ádan Barbosa Ribeiro"),
  accountEmail: Text("adanbribeiro@gmail.com"),
  decoration: BoxDecoration(
    color: AppColors.dark_blue,
  ),
  currentAccountPicture: CircleAvatar(
    backgroundColor: Colors.white,
    child: Text(
      "A",
      style: TextStyle(fontSize: MediaQuery.of(context).size.width/10),
    ),
  ),
),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Dados_Pessoais()));
        },
        title:Text("Dados Pessoais"),
        leading: Icon(Icons.assignment),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Avaliacao_Medica()));
        },
        title: Text("Avaliação Médica"),
        leading: Icon(Icons.accessibility_new_outlined),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Rotina_Alimentar()));
        },
        title: Text("Rotina de Alimentação"),
        leading: Icon(Icons.fact_check_outlined),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Evolucao_Imc()));
        },
        title: Text("Evolução do IMC"),
        leading: Icon(Icons.analytics),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Sindrome_Metabolica()));
        },
        title: Text("Síndrome Metabólica"),
        leading: Icon(Icons.beenhere_outlined),
      ),
      ListTile(
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => Dicas()));
        },
        title: Text("Dicas"),
        leading: Icon(Icons.emoji_objects_outlined),
      ),
        ],
      ),
      ),

      body:Center(
    child: Column(children:[
      SizedBox(height:MediaQuery.of(context).size.width/15),
     Row(children: [
       SizedBox(width:MediaQuery.of(context).size.width/36.66),
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
          Text('Café da Manhã',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width/20)
            ),
            SizedBox(height:MediaQuery.of(context).size.height/30),
            Text('Café'),
            Text('Pão'),
            Text('Ovos'),
          ])
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
          Text('Lanche da Manhã',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width/20)
            ),
            SizedBox(height:MediaQuery.of(context).size.height/30),
            Text('Café'),
            Text('Pão'),
            Text('Ovos'),
          ])
        )
          ),
),
     ],
     ),

     Row(children: [
       SizedBox(width:MediaQuery.of(context).size.width/36.66),
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
          Text('Almoço',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width/20)
            ),
            SizedBox(height:MediaQuery.of(context).size.height/30),
            Text('Café'),
            Text('Pão'),
            Text('Ovos'),
          ])
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
          Text('Lanche da Tarde',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width/20)
            ),
            SizedBox(height:MediaQuery.of(context).size.height/30),
            Text('Café'),
            Text('Pão'),
            Text('Ovos'),
          ])
        )
          ),
),
     ],
     ),

     Row(children: [
       SizedBox(width:MediaQuery.of(context).size.width/36.66),
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
          Text('Jantar',
            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width/20)
            ),
            SizedBox(height:MediaQuery.of(context).size.height/30),
            Text('Café'),
            Text('Pão'),
            Text('Ovos'),
          ])
        )
          ),
),
     ],
     ),
    ]
    ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: AppColors.dark_blue,
      child: Icon(Icons.plus_one_rounded),
      onPressed: (){},
    ),
    );
  }
}