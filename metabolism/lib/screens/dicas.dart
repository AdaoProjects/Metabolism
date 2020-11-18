import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/rotina_alimentar/rotina_alimentar.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';

class Dicas extends StatefulWidget {
  @override
  _DicasState createState() => _DicasState();
}

class _DicasState extends State<Dicas> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        title: Text('Dicas'),
        centerTitle: true,
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
        child: Text('Dicas'),
      ),
    );
  }
}