import 'package:flutter/material.dart';
import '../shared/components/components.dart';

class loginScreen extends StatefulWidget{

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25,),

              defaultFormField(
                  controller: emailController,
                TextInputType: TextInputType.emailAddress,
                label: 'Email',
                prefixIcon: Icons.email,
                validator: (value){
                    if(value.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                },
              ), // defaultFormField
              const SizedBox(height:20,),
              defaultFormField(
                controller: passController,
                obscure: isPassword,
                label: 'Password',
                TextInputType: TextInputType.visiblePassword,
                prefixIcon:  Icons.lock,
                suffixIcon:  IconButton(
                  onPressed: (){
                    setState(() {
                      isPassword = !isPassword ;
                    });
                  }, icon: isPassword? Icon(Icons.visibility,) : Icon(Icons.visibility_off),
                ),
                validator: (value){
                  if(value.isEmpty) {
                    return 'password must not be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),

              defaultBottom(
                name: 'Login',
                  radius: 10,
                  onPress: (){
                    if(formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passController.text);
                    }
                  },
              ),  //defaultBottom
              const SizedBox(
                height: 10,
              ),

              defaultBottom(
                name: 'ReGIster',
                isUppercase: false,
                background: Colors.lightBlueAccent,
                radius: 15,
                onPress: (){},
              ),  // defaultBottom
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account ?'),
                  const SizedBox(width: 10,),
                  TextButton(
                    child: const Text(
                      'Register Now',
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}