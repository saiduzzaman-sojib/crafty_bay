import 'package:crafty_bay/app/app_colors.dart';
import 'package:crafty_bay/app/extiontions/utility_extension.dart';
import 'package:crafty_bay/app/validators.dart';
import 'package:crafty_bay/features/auth/app_logo.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _emailTeController =TextEditingController();
  final TextEditingController _firstNameTeController =TextEditingController();
  final TextEditingController _lastNameTeController =TextEditingController();
  final TextEditingController _cityTeController =TextEditingController();
  final TextEditingController _mobileTeController =TextEditingController();
  final TextEditingController _passwordTeController =TextEditingController();

  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:.all(24),
            child: Form(
              key: _formkey,
              autovalidateMode: .onUserInteraction,
              
              child: Column(
                children: [
                  AppLogo(
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 12,),
                  Text('Sign Up',style:context.textTheme.titleLarge),
                  Text('Create an account with details',style:context. textTheme.labelLarge),
                  SizedBox(height: 24,),
                  TextFormField(
                    keyboardType: .emailAddress,
                    controller : _emailTeController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                    hintText:'Email',
                    ),
                    validator:Validators.validateEmail,
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _firstNameTeController,
                    decoration: InputDecoration(
                    hintText:'First name',
                    ),
                    validator: (input) =>Validators.validateText(input,
                    message: 'Enter your first name'
                    ),
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _lastNameTeController,
                    decoration: InputDecoration(
                    hintText:'Last name',
                    ),
                    validator: (input) =>Validators.validateText(input,
                    message: 'Enter your last name'
                    ),
                  ),
                  const SizedBox(height: 8,),
                    TextFormField(
                    keyboardType: .phone,
                    textInputAction: TextInputAction.next,
                    controller: _mobileTeController,
                    decoration: InputDecoration(
                    hintText:'Mobile',
                    ),
                    validator:Validators.validatePhoneNumber,
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _cityTeController,
                    decoration: InputDecoration(
                    hintText:'City',
                    ),
                    validator: (input) =>Validators.validateText(input,
                    message: 'Enter your city name'
                    ),
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: _passwordTeController,
                    decoration: InputDecoration(
                    hintText:'Password',
                    ),
                    validator: Validators.validatePassword,
                  ),
                  const SizedBox(height: 8,),
                  FilledButton(
                    onPressed: _onTapSignUpButton, child: Text('Sign Up'))
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
  void _onTapSignUpButton(){

  }
}