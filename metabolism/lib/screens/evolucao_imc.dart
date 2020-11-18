import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metabolism/screens/avaliacao_medica.dart';
import 'package:metabolism/screens/dados_pessoais.dart';
import 'package:metabolism/screens/dicas.dart';
import 'package:metabolism/screens/rotina_alimentar/rotina_alimentar.dart';
import 'package:metabolism/screens/sindrome_metabolica.dart';
import 'package:metabolism/utilities/colors.dart';
import 'package:fl_chart/fl_chart.dart';

class Evolucao_Imc extends StatefulWidget {
  @override
  _Evolucao_ImcState createState() => _Evolucao_ImcState();
}

class _Evolucao_ImcState extends State<Evolucao_Imc> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.light_yellow,
       appBar: AppBar(
        title: Text('Evolução IMC'),
        centerTitle: true,
        backgroundColor: AppColors.dark_yellow,
      ),
     drawer: Drawer(
child:
 ListView(
    children: <Widget>[
       UserAccountsDrawerHeader(
  accountName: Text("Ádan Barbosa Ribeiro"),
  accountEmail: Text("adanbribeiro@gmail.com"),
  decoration: BoxDecoration(
    color: AppColors.dark_yellow,
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
      body:SingleChildScrollView(
             scrollDirection: Axis.vertical,
            child:Column(
        children:[
          SizedBox(height:MediaQuery.of(context).size.width/35),
          Center(child:Text('IMC = 22.5',
          style: TextStyle(fontSize: MediaQuery.of(context).size.width/10),
          ),
          ),
          Text('Situação: Normal',
          style: TextStyle(fontSize: MediaQuery.of(context).size.width/15),
          ),
          SizedBox(height:MediaQuery.of(context).size.width/35),
          Container(
            height:MediaQuery.of(context).size.height/2.2,
            width:MediaQuery.of(context).size.width/1.1,
            decoration: BoxDecoration(
              color: AppColors.dark_yellow,
              borderRadius: BorderRadius.circular(MediaQuery.of(context)
                                          .size
                                          .height / 30),
                                    ),
            
            child:Column(children: [
              SizedBox(height:MediaQuery.of(context).size.height/20),
          Row(children:[
  SizedBox(
          width:MediaQuery.of(context).size.width/1.2,
          height:MediaQuery.of(context).size.height/2.6,
          child:LineChart(
            
            LineChartData(
              
              lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.white,
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
        gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 15:
                return 'OUT';
              case 45:
                return 'NOV';
              case 75:
                return 'DEC';
            }
            return '';
          },
        ),
      ),
              minX: 0,
              minY: 20,
              maxY:29,
              lineBarsData: [
                LineChartBarData(
                  colors: [AppColors.dark_green],
                  isCurved: true,
                  spots:[
                    FlSpot(0, 23.13),
                    FlSpot(30, 21.3),
                    FlSpot(60, 26.71),
                    FlSpot(90, 27.15),
                  ],
                ),
              ],
            ),
          ),
          ),
          ]),
          ]),
          ),
          SizedBox(height:MediaQuery.of(context).size.height/20),
          Text('O seu IMC no dia 01/10/2020 era 23.13',
          style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width/20),
          ),
          Text('O seu IMC no dia 01/11/2020 era 21.30',
           style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width/20),
           ),
          Text('O seu IMC no dia 01/12/2020 era 26.71',
           style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width/20),
           ),
          Text('O seu IMC no dia 31/12/2020 era 27.15',
           style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width/20),
           ),

          ],
          ),
      ),
    );
  }
}