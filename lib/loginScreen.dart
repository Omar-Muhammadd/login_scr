import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget{

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
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
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon( Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:20,),
            TextFormField(
              controller: passController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon( Icons.lock ),
                suffixIcon: Icon( Icons.remove_red_eye, ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 40,
              child: MaterialButton(
                onPressed: (){
                  print(emailController.text);
                  print(passController.text);
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
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
    );

  }
}