import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_roadmap/Controllers/SliderController.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  SliderController slideController =Get.put(SliderController());

  // double opacity = .4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Example'),
      ),
      body: Column(
        children: [
          Obx(() => Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(slideController.opacity.value),
          ),
          ),
          Obx(() => Slider(value: slideController.opacity.value, onChanged: (value){
            slideController.setOpacity(value);
          })
          )
        ],
      ),
    );
  }
}
