
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getx_learn_roadmap/Controllers/ImagePickerController.dart';
import 'package:get/get.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {

  ImagePickerController imageController = Get.put(ImagePickerController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Picker Example'
        ),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                  backgroundImage: imageController.imagePath.isNotEmpty?
                  FileImage(File(imageController.imagePath.toString())):null
              ),
            ),

            TextButton(
                onPressed: () {
                  imageController.getImage();
                },
                child:
                Text('Pick Image')),
          ],
        );
      })
    );
  }
}
