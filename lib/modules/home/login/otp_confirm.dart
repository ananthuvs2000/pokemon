import 'package:app/modules/home/login/widgets/button.dart';
import 'package:app/modules/home/login/widgets/sizedbox.dart';
import 'package:app/modules/home/login/widgets/text.dart';
import 'package:flutter/material.dart';

class OtpConfirmScreen extends StatelessWidget {
  OtpConfirmScreen({super.key});
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
            padding: EdgeInsets.only(top: 200, left: 10, right: 10),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  
                  children: [
                    Text('Enter OTP',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 3,
                            shadows: [
                              BoxShadow(color: Colors.black45, blurRadius: 5),
                            ])),
                            SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomSizedBox(),
                        CustomSizedBox(),
                        CustomSizedBox(),
                        CustomSizedBox(),
                      ],
                    ),
                    SizedBox(height: 50,),
                    PrimaryElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/forgot');
                    }, label: 'CONFIRM')
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
