import 'package:flutter/material.dart';
import 'package:test_project/LoginScreen.dart';
import 'navigation_home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
         child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   //  userField("Name","Please enter your name"),
                  //    userField("Email","Please enter your email"),
                  //     userField("Mobile Number","Please enter your mobile number"),
                  //      userField("Password","Please enter your password"),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Email"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: mobileNoController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Mobile Number"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _isObscure,

                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          // this button is used to toggle the password visibility
                          suffixIcon: IconButton(
                              icon: Icon(
                                  _isObscure ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })

                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },


                      /*     decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),*/
                      /*    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },*/
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Navigate the user to the Home page
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigationHomeScreen()));
                            // Navigator.pop(context);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please fill input')),
                            );
                          }
                        },
                        child: const Text('Register'),
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("You have an account",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
                            //    Navigator.pop(context);
                          },
                          child: const Text(" Signin",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }

  Widget userField(String titles ,String name){
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        controller: nameController,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText:"titles"),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return name;
          }
          return null;
        },
      ),
    );
  }
}
