import 'package:app/modules/home/home_page.dart';
import 'package:app/modules/home/login/signup_page.dart';
import 'package:app/modules/home/login/widgets/button.dart';
import 'package:app/modules/home/login/widgets/colors.dart';
import 'package:app/modules/home/login/widgets/textformfield.dart';
import 'package:avatar_glow/avatar_glow.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmailVerifyScreen extends StatelessWidget {
  EmailVerifyScreen({
    super.key,
  });
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/walpaper.jpg'),
              fit: BoxFit.fitHeight)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  // shrinkWrap: true,
                  children: [
                    

                    
                    // Image.asset(
                    //   'assets/images/pokemon_title.jpg',
                    //   fit: BoxFit.contain,
                    //   width: 200,
                    // ),
                    SizedBox(height: 300,
                    child: 
                    Lottie.asset('assets/lotties/login_pekachu.json'),),
                    Row(
                      children: [
                        Text('Verify Email',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white,shadows: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5
                          ),
                          
                        ]),),

                      ],
                    ),
                    SizedBox(height: 10,),
                    
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      validator: (val) {
                        if (val == '') {
                          return 'Invalid Passwprd';
                        }
                        return '';
                      },
                      icon: const Icon(Icons.email_outlined),
                      text: 'Enter Email',
                    ),
                    SizedBox(height: 10),
                  
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 170,
                      child: PrimaryElevatedButton(
                        onPressed: () {
                          // _formKey.currentState!.validate();
                          _emailController.clear();
                          _passwordController.clear();
                          Navigator.pushNamed(context, '/forgot');
                        },
                        label: 'VERIFY',
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
