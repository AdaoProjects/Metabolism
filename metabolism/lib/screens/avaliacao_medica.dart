import 'package:flutter/material.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/rotina_alimentar/rotina_alimentar.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';

class Avaliacao_Medica extends StatefulWidget {
  @override
  _Avaliacao_MedicaState createState() => _Avaliacao_MedicaState();
}

class _Avaliacao_MedicaState extends State<Avaliacao_Medica> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         backgroundColor: AppColors.dark_pink,
        title: Text('Avaliação Médica'),
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
      body:Center(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
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
            labelText:'Pressão (exemplo 12/8)',),
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
            labelText:'Circunf. Abdominal (cm)',
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
            labelText:'HDL (opcional)',
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
            labelText:'Glicemia (opcional)',
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
            labelText:'Triglicerídeos (opcional)',
  ),
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
),
),
SizedBox(height:MediaQuery.of(context).size.height/12),
FlatButton(
  onPressed: (){},
  child:Text('Salvar',
  style:TextStyle(color:Colors.white)),
  color:Colors.blue
),
Image.asset('assets/images/avaliacao_medica/avaliacao_medica_img.png',
                height:MediaQuery.of(context).size.height/2.5,
                width:MediaQuery.of(context).size.width/2 ),
        ] ,
      ), 
        ),
      ),
    );
  }
}