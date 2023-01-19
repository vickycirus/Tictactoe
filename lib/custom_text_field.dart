import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController nameController;
  const CustomTextField({Key? key,required this.nameController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: nameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 14),
        filled:true,
        fillColor:const Color(0xffF5F5FA),
        

      ),
    );
  }
}
