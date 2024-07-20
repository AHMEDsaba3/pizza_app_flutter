import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

class facebook extends StatefulWidget {
  const facebook({super.key});

  @override
  State<facebook> createState() => _facebookState();
}

class _facebookState extends State<facebook> {


  @override


  Widget build(BuildContext context) {
    late WebViewController controller;
    controller = WebViewController();
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.setBackgroundColor(Colors.white);
    controller.loadRequest(Uri.parse('https://www.facebook.com/'));
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('WOW Pizza',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed:(){
            Navigator.pushNamed(context, '/twitter');
          }, icon:Icon(EvaIcons.twitter,size: 40,) ),
          IconButton(onPressed:(){ Navigator.pushNamed(context, '/facebook');}
              , icon:Icon(EvaIcons.facebook,size: 40,) ),

        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
