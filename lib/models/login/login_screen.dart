import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/shared/components/components.dart';

class loginScreen extends StatefulWidget {


  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var emailController = TextEditingController();

  var passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isShowen=true;
  bool eye =true;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Form(
         key: formKey,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
                 "Login",
               style: TextStyle(
                 fontSize: 50,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 20,),
             defaultFormField(
                 controller: emailController,
                 type: TextInputType.emailAddress,
                 validate: (String value){
                   if(value!.isEmpty)
                     {
                       return "email address must not be empty";
                     }
                   return null;
                 },
                 label: "email address",
                 prefix: Icons.email,
             ),
             SizedBox(height: 20,),
             defaultFormField(
                 controller: passController,
                 type: TextInputType.visiblePassword,
                 validate: (String value){
                   if(value!.isEmpty)
                     {
                       return "password must not be empty";
                     }
                   return null;
                 },
                 label: "password",
                 prefix: Icons.lock,
               suffix:!eye?Icons.remove_red_eye:Icons.visibility_off,
               isPass: isShowen,
               suffixOnpressed: (){
                   setState(() {
                     isShowen=!isShowen;
                     eye=!eye;
                   });
               }
             ),
             SizedBox(height:20,),
         Container(
           width: double.infinity,
           color: Colors.blue,
           child: MaterialButton(
             onPressed: (){
               if(formKey.currentState!.validate())
               {
                 print(emailController.text);
                 print(passController.text);
               }
             },
             child: Text(
               "LOGIN",
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.white,
               ),
             ),
           ),
         ),

           ],
         ),
       ),
     ),
   );
  }
}
