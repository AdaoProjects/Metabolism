import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/rotina_alimentar.dart';


class Sindrome_Metabolica extends StatefulWidget {
  @override
  _Sindrome_MetabolicaState createState() => _Sindrome_MetabolicaState();
}

class _Sindrome_MetabolicaState extends State<Sindrome_Metabolica> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        title: Text('Síndrome Metabólica'),
      ),
      drawer: Drawer(
child:
 ListView(
    children: <Widget>[
       UserAccountsDrawerHeader(
  accountName: Text("Ádan Barbosa Ribeiro"),
  accountEmail: Text("adanbribeiro@gmail.com"),
  currentAccountPicture: CircleAvatar(
    backgroundColor:
        Theme.of(context).platform == TargetPlatform.iOS
            ? Colors.blue
            : Colors.white,
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
        title: Text("Dica"),
        trailing: Icon(Icons.arrow_forward),
      ),
        ],
      ),
      ),
      body:Center(
        child: Text('IMC'),
      ),
    );
  }
}