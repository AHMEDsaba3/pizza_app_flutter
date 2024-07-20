  import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:task7/facebook.dart';
import 'package:task7/fries.dart';
import 'package:task7/twitter.dart';
import 'package:task7/vegetable.dart';
import 'cheese.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        '/':(_)=>MyHomePage(),
        '/fries':(_)=>fries(),
        '/vpizza':(_)=>vegetable(),
        '/cpizza':(_)=>cheese(),
        '/facebook':(_)=>facebook(),
        '/twitter':(_)=>twitter(),
      },
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(style:
        OutlinedButton.styleFrom(primary: Colors.orangeAccent,) ),
        appBarTheme: const AppBarTheme(color: Colors.orangeAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('WOW Pizza',style: TextStyle(color: Colors.white),),
        actions:  [
          IconButton(onPressed:(){Navigator.pushNamed(context, '/twitter');},
              icon:Icon(EvaIcons.twitter,size: 40,) ),
          IconButton(onPressed:(){ Navigator.pushNamed(context, '/facebook');}
              , icon:Icon(EvaIcons.facebook,size: 40,) ),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ButtonBar(
              children: [
                OutlinedButton(
                    onPressed:(){
                      Navigator.pushNamed(context, '/vpizza');
                }, child: const Text('Vegetable Pizza',)
                )
              ,  OutlinedButton(
                    onPressed:(){
                      Navigator.pushNamed(context, '/cpizza');
                }, child: const Text('Cheese Pizza',)
                )
              ,  OutlinedButton(
                    onPressed:(){
                      Navigator.pushNamed(context, '/fries');
                }, child: const Text('Fries',)
                )
              ],
            ),
            const SizedBox(height: 40,),
            const Image(image:AssetImage('images/pizza1.png'),width:400,fit: BoxFit.cover,),
            const SizedBox(height: 20,),
            const Text('Hi ,I m the pizza Assistant. \n what can ihelp you order?',style: TextStyle(fontSize: 30),),
            const SizedBox(height: 110,),
            const Text('home.dart',style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight: FontWeight.bold),),


           
          ],
          
        ),
      ),
      

    );
  }
}
