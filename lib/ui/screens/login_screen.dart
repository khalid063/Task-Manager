import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/email_verification_screen.dart';
import '../widgets/screen_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 64,),
                  Text(
                      'Get Started With',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email'
                  )
                ),
                SizedBox(height: 12,),
                TextFormField(
                  obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                      /// if we want show and hide icon,
                      //prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                    )
                ),
                  SizedBox(height: 16,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Icon(Icons.arrow_forward_ios)),
                  ),
                  SizedBox(height: 16,),
                  Center(
                  child: InkWell(       ///*** for Removing the outside padding of Text Button
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EmailVerificationScreen()));
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                    TextButton(onPressed: (){}, child: Text('Sign up')),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}




