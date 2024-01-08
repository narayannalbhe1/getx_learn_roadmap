import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_roadmap/Screens/Fruit_List.dart';
import 'package:getx_learn_roadmap/Screens/ImagePickerExample.dart';
import 'package:getx_learn_roadmap/Screens/Slider_Example.dart';
import 'package:getx_learn_roadmap/Screens/SnackBar.dart';
import 'package:getx_learn_roadmap/Screens/Switch_Example.dart';
import 'package:getx_learn_roadmap/Screens/loginExGet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            // Get.dialog();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Getx Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('light Theme'),
                        onTap: (){
                          Get.changeTheme(ThemeData.light());
                        },
                      ),

                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),


                      ],
                    ),
                  )
                );
                /// Get Default dialog
                // Get.defaultDialog(
                //   title: 'Are you want to exit',
                //   onConfirm: () {
                //     Text('Yes');
                //   },
                //  cancel: Text('Cancel'),
                //
                // );
                },
              child: Text('Button to call Snackbar'),
            ),
            ElevatedButton(
                onPressed: (){
              Get.to(FruitList());
            }, child: Text('Fruit_List Example')),
            SizedBox(height: 10),

            ElevatedButton(onPressed: (){
              Get.to(ImagePickerExample());
            }, child: Text('Image Picker Example')),
            SizedBox(height: 10),

            ElevatedButton(onPressed: (){
              Get.to(SliderExample());
            }, child: Text('Slider Example Example')),
            SizedBox(height: 10),

            ElevatedButton(onPressed: (){
              Get.to(SnackBarEx());
            }, child: Text('Snack Bar Example')),
            SizedBox(height: 10),

            ElevatedButton(onPressed: (){
              Get.to(Switch_Controller());
            }, child: Text('Switch Example')),

            ElevatedButton(onPressed: (){
              Get.to(LoginExGet());
            }, child: Text('Login Page Example')),

            ElevatedButton(onPressed: (){
              Get.to(LoginExGet());
            }, child: Text('Login Page Example')),




          ],
        ),
      ),

    );
  }
}
