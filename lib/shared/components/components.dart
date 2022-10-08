import 'package:flutter/material.dart';

Container defaultBottom({
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 0,
  bool isUppercase = true,
  required onPress,
  required String name,
})  => Container(
  width: width,
  height: 40,
  decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(radius)
  ),
  child: MaterialButton(
    onPressed: onPress,
    child: Text(
      isUppercase? name.toUpperCase() : name,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
) ;

Widget defaultFormField({
  var suffixIcon,
  onPressedSuffix,
  bool obscure = false,
  required var controller,
  required TextInputType,
  required label,
  required IconData prefixIcon,
  required validator,
}) => TextFormField(
  controller: controller,
  obscureText: obscure,
  keyboardType: TextInputType,
  validator: validator,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefixIcon),
    suffixIcon: suffixIcon,
    border: const OutlineInputBorder(),
  ),
);