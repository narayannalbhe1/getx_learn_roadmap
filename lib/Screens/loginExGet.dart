import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_roadmap/Controllers/login_Controller.dart';
import 'package:getx_learn_roadmap/Screens/Home%20Screen/HomeScreen.dart';

class LoginExGet extends StatefulWidget {
  @override
  _LoginExGetState createState() => _LoginExGetState();
}

class _LoginExGetState extends State<LoginExGet> {
  // final TextEditingController usernameController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  LoginController loginController = Get.put(LoginController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //
  // void _login() {
  //   String username = usernameController.text;
  //   String password = passwordController.text;
  //
  //   if (username == 'abc' && password == 'abc') {
  //     Get.off(HomeScreen());
  //   } else {
  //     Get.snackbar('Login Failed', 'Invalid username or password',
  //         snackPosition: SnackPosition.BOTTOM);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Page',style: TextStyle(
              fontSize: 20,
            ),),
            Divider(),
            // Username Input
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16.0),

            // Password Input
            TextFormField(
              controller: loginController.passwordController.value,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 32.0),

            /// Login Button
            // Container(
            //   width: Get.width*0.5,
            //   color: Colors.green[300],
            //   child: TextButton(
            //     onPressed: _login,
            //     child: Text('Login',style: TextStyle(
            //       fontSize: 18,
            //       color: Colors.white
            //     ),),
            //   ),
            // )
            ///
            Obx(() {
              return InkWell(
                onTap: (){
                  loginController.loginApi();
                },
                child: loginController.loading.value
                    ? CircularProgressIndicator()
                    : Container(
                        width: Get.width*0.5,
                        color: Colors.green[300],
                        child: Text('Login',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        ),),
                      ),
               );
            }),
          ],
        ),
      ),
    );
  }
}
