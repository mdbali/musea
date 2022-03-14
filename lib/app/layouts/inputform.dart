import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget{
  final String hintText;
  final bool isPassword;
  final bool isEmail;
  
  const CustomFormField(
  {
    required Key key, 
    required this.hintText, 
    required this.isPassword, 
    required this.isEmail,
    required Icon prefixIcon,
    required Function(dynamic value) validator,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(10.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}