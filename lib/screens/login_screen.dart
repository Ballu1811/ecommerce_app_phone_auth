import 'package:flutter/material.dart';
import 'package:new_food_app/auth_provider.dart';
import 'package:new_food_app/widgets/custom_colors.dart';

class LoginPage extends StatelessWidget {
  static const id = '/LoginPage';
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/logo1.jpg', height: 200),
                    SizedBox(height: 100),
                    Text(
                      "SHOPCART",
                      style: TextStyle(fontSize: 30, fontFamily: 'roboto-bold'),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: inputController,
                          decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    MaterialButton(
                      minWidth: double.infinity,
                      color: primarycolor,
                      onPressed: () {
                        if (inputController.text != null) {
                          final phone = '+91' + inputController.text;
                          AuthProvider().loginWithPhone(context, phone);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
