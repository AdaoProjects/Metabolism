import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/rotina_alimentar.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';

class Dados_Pessoais extends StatefulWidget {
  @override
  _Dados_PessoaisState createState() => _Dados_PessoaisState();
}

class _Dados_PessoaisState extends State<Dados_Pessoais> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         backgroundColor: AppColors.dark_pink,
        title: Text('Dados Pessoais'),
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
    color: AppColors.dark_pink,
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
      body:Column(
        children:[
          SizedBox(height:MediaQuery.of(context).size.height/18),
          Row(children: [
            SizedBox(width:MediaQuery.of(context).size.width/7),
            Container(width:MediaQuery.of(context).size.width/1.4,
          height:MediaQuery.of(context).size.height/12,
          child: TextField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: AppColors.dark_pink),   
              ),
            labelText:'Idade (anos)',),
            keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
),
),
          ],),
         
         
SizedBox(height:MediaQuery.of(context).size.height/23),
Container(width:MediaQuery.of(context).size.width/1.4,
          height:MediaQuery.of(context).size.height/12,
          child: TextField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: AppColors.dark_pink),   
              ),
            labelText:'Sexo',
  ),
  textAlign: TextAlign.center,
),
),
SizedBox(height:MediaQuery.of(context).size.height/23),
Container(width:MediaQuery.of(context).size.width/1.4,
          height:MediaQuery.of(context).size.height/12,
          child: TextField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: AppColors.dark_pink),   
              ),
            labelText:'Peso (kg)',
  ),
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
),
),
SizedBox(height:MediaQuery.of(context).size.height/23),
Container(width:MediaQuery.of(context).size.width/1.4,
          height:MediaQuery.of(context).size.height/12,
          child: TextField(
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: AppColors.dark_pink),   
              ),
            labelText:'Altura (cm)',
  ),
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
),
),
SizedBox(height:MediaQuery.of(context).size.height/23),
Container(width:MediaQuery.of(context).size.width/1.4,
          height:MediaQuery.of(context).size.height/12,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: AppColors.dark_pink),   
              ),
            labelText:'Freq. de Exercícios (dias/s)',
  ),
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
),
),
SizedBox(height:MediaQuery.of(context).size.height/23),
FlatButton(
  child:Text('Salvar')
)
        ] ,
      ),
    );
  }
}