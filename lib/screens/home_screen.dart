import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_food_app/screens/login_screen.dart';

class HomePage extends StatelessWidget {
  static const id = '/HomePage';

  Future SignOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut().whenComplete(
          () => Navigator.pushReplacementNamed(context, LoginPage.id),
        );
  }

  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController mobC = TextEditingController();
  TextEditingController hNoC = TextEditingController();
  TextEditingController streetC = TextEditingController();
  TextEditingController cityC = TextEditingController();
  TextEditingController stateC = TextEditingController();
  TextEditingController countryC = TextEditingController();
  TextEditingController pinC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  submit() {
    if (formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              SignOut(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Card(
                // color: Colors.grey.shade200,
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              labelText: 'What people call you?',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: nameC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              labelText: 'What people call you?',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: emailC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: mobC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Mobile Number',
                              labelText: 'Mobile Number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: hNoC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter House Number',
                              labelText: 'House Number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: streetC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Street or Village Name',
                              labelText: 'Street Number or Village Name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: cityC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter City Name',
                              labelText: 'City',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: stateC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter State Name',
                              labelText: 'State',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: countryC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Country Name',
                              labelText: 'Country',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            controller: pinC,
                            validator: (v) {
                              if (v.length < 4) {
                                return 'Should be greater than 5';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Pin Number',
                              labelText: 'PIN',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: () {
                    submit();
                  },
                  child: Icon(Icons.navigate_next),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
