import 'package:flutter/material.dart';
import 'package:getx_learn_roadmap/Controllers/Switch_Controller.dart';
import 'package:get/get.dart';

class Switch_Controller extends StatefulWidget {
  const Switch_Controller({super.key});

  @override
  State<Switch_Controller> createState() => _Switch_ControllerState();
}

class _Switch_ControllerState extends State<Switch_Controller> {
  // bool notification = false;

  SwitchController switchController =Get.put(SwitchController());

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Switch Example'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              Obx(() {
                return Switch(value: switchController.notification.value, onChanged: (value){
                  switchController.setNotification(value);
                });
              })
            ],
          )
        ],
      ),
    );
  }
}
