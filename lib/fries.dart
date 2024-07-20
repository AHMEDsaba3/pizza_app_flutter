import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class fries extends StatelessWidget {
  const fries ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('WOW Pizza',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed:(){Navigator.pushNamed(context, '/twitter');},
              icon:Icon(EvaIcons.twitter,size: 40,) ),
          IconButton(onPressed:(){ Navigator.pushNamed(context, '/facebook');}
              , icon:Icon(EvaIcons.facebook,size: 40,) ),

        ],
      ),
      body:
      Column(
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
            SizedBox(height: 10,),
            Image(image: AssetImage('images/fries.png'),width:400,fit: BoxFit.cover,),
            const SizedBox(height: 230,),
            const Text('fries.dart',style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight: FontWeight.bold),),


          ]
      )
    );
  }
}
