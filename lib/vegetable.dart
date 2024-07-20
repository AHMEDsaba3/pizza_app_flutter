import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class vegetable extends StatelessWidget {
  const vegetable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Image(image: AssetImage('images/Pizza2.png'),width:350,fit: BoxFit.cover,),
            const SizedBox(height: 150,),
            const Text('Vpizza.dart',style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight: FontWeight.bold),),


          ]
      )

    );
  }
}
