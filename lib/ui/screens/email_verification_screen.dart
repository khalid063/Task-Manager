import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/otp_verification_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 64,),
                  Text(
                    'Your Email Address',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'A 6 digits pin will sent to your email address',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.red),          ///*** If I want to "overRide" the color of Text of Theme color
                                                                ///*** we have to use "copyWith(), ? is for null safety
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Email'
                      )
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerificationScreen()));
                        }, child: const Icon(Icons.arrow_circle_right_outlined)),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('Sign in')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
