import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/rotina_alimentar/rotina_alimentar.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/evolucao_imc.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';

class Alimentos_Refeicao extends StatefulWidget {
  @override
  _Alimentos_RefeicaoState createState() => _Alimentos_RefeicaoState();
}

class _Alimentos_RefeicaoState extends State<Alimentos_Refeicao> with SingleTickerProviderStateMixin {
  String nome_refeicao='Café da Manhã';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light_green,
      appBar: AppBar(
        backgroundColor: AppColors.dark_green,
        centerTitle: true,
        title: Text(nome_refeicao),
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
    child: Image.asset('assets/images/alimentos/pao.jpg',
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
    child: Image.asset('assets/images/alimentos/ovos.jpg',
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
    child: Image.asset('assets/images/alimentos/cuscuz.jpg',
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
    child: Image.asset('assets/images/alimentos/leite.jpg',
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
    child: Image.asset('assets/images/alimentos/bacon.jpg',
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
    child: Image.asset('assets/images/alimentos/cafe.jpg',
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