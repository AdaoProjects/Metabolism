import 'package:flutter/material.dart';
import 'package:metabolism/utilities/colors.dart';
import 'package:metabolism/screens/evolucao_imc.dart';

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
    body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/start_img.jpg',),
            fit: BoxFit.cover,
          ),
        ),
        child:Center(
          child: Column(children: [
          SizedBox(height:MediaQuery.of(context).size.height/2),
          FlatButton(
          padding: new EdgeInsets.all(15.0),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side:BorderSide(color: Colors.white.withOpacity(0.5))
          ),
          onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Evolucao_Imc()));
          },
          color: AppColors.dark_yellow.withOpacity(0.5),
          child:Text('Iniciar', style:TextStyle(fontSize: MediaQuery.of(context).size.width/12, color: Colors.white),),
        ),

          ],
          ),
                ), 
              ),
    );
  }
}
