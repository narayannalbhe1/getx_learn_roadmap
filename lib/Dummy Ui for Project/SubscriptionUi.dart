import 'package:flutter/material.dart';
import 'package:getx_learn_roadmap/Dummy%20Ui%20for%20Project/SubscriptionUiPage.dart';

class SubscriptionUi extends StatefulWidget {
  const SubscriptionUi({super.key});

  @override
  State<SubscriptionUi> createState() => _SubscriptionUiState();
}

class _SubscriptionUiState extends State<SubscriptionUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        title:Text('Subscription Button'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                      return  SubscriptionUiPage();
                  }));
                }, child: Text(
                'Subscription'
            )),
          )
        ],
      ),
    );
  }
}






