import 'package:flutter/material.dart';
import 'package:loginui/colors.dart';

import 'constants.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            
            Stack(
              children: <Widget>[
                Image.asset(
                 bgImage,
                 height: height * 0.40,
                 width: width,
                 fit:BoxFit.cover,
                ),
                Container(
                  height: height * 0.42,
                  width: width,
                  
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                      stops: [0.3,0.9],
                      begin: Alignment.topCenter,
                      end:Alignment.bottomCenter,
                      colors:[Colors.transparent,Colors.white])
                  ),
                  // color: Colors.orange.withOpacity(0.3),
                ),
              ],
            ),
            Padding( padding: EdgeInsets.symmetric(horizontal:20 ),
              child: Container(
                margin: EdgeInsets.only(top:10),
                decoration: BoxDecoration(color: Colors.white10.withOpacity(0.9),borderRadius: BorderRadius.circular(20),
                  border: Border.all(color:Color(0xff08c105)),
                ),
                child: Column(children: [
                  SizedBox(height: 20,),
                  Center(
                child: Text(
                  appName,
                  style:TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                ),
              ),
              Center(
                child: Text(
                  slogan,
                  style:TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,top: 20),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "  $loginString ",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                          colors:[
                            primaryColor.withOpacity(0.2),
                            Color.fromARGB(0, 206, 199, 201),
                          ],
                    ),
                    border: Border(left: BorderSide(color: primaryColor,width: 5))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor)
                    ),
                    prefixIcon: Icon(Icons.email,
                    color: primaryColor),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: primaryColor,fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 10),
                child: TextField(
                  obscureText:true ,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor)
                    ),
                    prefixIcon: Icon(Icons.lock_open,
                    color: primaryColor),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: primaryColor,fontSize: 16)
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child:TextButton(onPressed: (){},child:Text(forgetText,style:TextStyle(color:Colors.black,fontSize: 16),),),
              ),
              SizedBox(height: 10,),
              Center(
                child:Padding(padding: EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    
                    height: height * 0.08,
                    width: width - 150,
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xff08c105)),
                        onPressed: (){},
                        child: Text("Login to account", 
                          style:TextStyle(
                            letterSpacing:0.5,
                            fontWeight:FontWeight.w500,
                            fontSize: 22,
                            color: Colors.white,
                            
                          ),
                        ),
                        
                      ),
                    ),
                  ),
                ),
              ),
              ],),),
            ),
            
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Text("Dont' have an account?"),
                TextButton(onPressed: (){}, child: Text("Create Account",style: TextStyle(color: primaryColor,fontSize: 16),))
              ],
            )
          ],
        ),
      ),
    );
  }
}