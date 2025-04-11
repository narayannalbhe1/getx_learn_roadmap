import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarEx extends StatefulWidget {
  const SnackBarEx({super.key});

  @override
  State<SnackBarEx> createState() => _SnackBarExState();
}

class _SnackBarExState extends State<SnackBarEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Getx Home Page'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Get.snackbar('hi', 'message',
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(seconds: 3),
                  );
                },
                child: Text('Button to call Snackbar'),
              ),
              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.defaultDialog(
                          title: 'Are you want to exit',
                          onConfirm: () {
                            Text('Yes');
                          },
                          cancel: Text('Cancel'),

                        );
                      },
                      child: Text('Button to call Snackbar'),
                    ),
                  ],
                ),
              )
            ],
          ),
        )

    );
  }
}


