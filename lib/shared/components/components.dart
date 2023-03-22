
import 'package:flutter/material.dart';

Widget defaultButton({
  double width =double.infinity,
  Color background =Colors.blue,
  required Function function,
  required String text ,
}) => Container(
  width: width,
  color: background,
  child: MaterialButton(
    onPressed:()=> function(),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  ),
);


Widget defaultFormField ({
  required TextEditingController controller,
  required TextInputType type,
  Function? onChange,
  required Function validate,
  required String label,
  required  IconData prefix,
     IconData? suffix,
  bool isPass = false,
  Function? suffixOnpressed,
}) => TextFormField(
controller: controller,
keyboardType: type,
obscureText: isPass,
onChanged: (value) => onChange,
validator: (value)=> validate(value),
decoration: InputDecoration(
labelText: label,
prefixIcon: Icon(
  prefix
),
suffixIcon: suffix!=null ? IconButton(
    onPressed:()=> suffixOnpressed!() ,
    icon:Icon(suffix),
):null,
border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),)
),
);


///////////////////////////////

