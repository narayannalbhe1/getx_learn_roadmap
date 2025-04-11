import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_roadmap/Controllers/FavouriteController.dart';


class FruitList extends StatefulWidget {
  const FruitList({super.key});

  @override
  State<FruitList> createState() => _FruitListState();
}

class _FruitListState extends State<FruitList> {


  FavouriteController controller = Get.put(FavouriteController());


  // List<String> fruitList = ['Orange','Apple','Mangoes','Banana'];
  // List<String> tempFruitList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Getx Tutorials'),
        ),
        body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                    onTap: () {
                      if(controller.tempFruitList.contains(controller.fruitList[index].toString())){
                        controller.removeFromFavourite(controller.fruitList[index].toString());
                      }
                      else{
                        controller.addToFavourite(controller.fruitList[index].toString());
                      }
                    },
                    title: Text(controller.fruitList[index].toString()),
                    trailing: Obx(() => Icon(Icons.favorite,
                        color: controller.tempFruitList.contains(controller.fruitList[index].toString())
                            ? Colors.red : Colors.grey)),
                    ),
            );
          }),
    );
  }
}


