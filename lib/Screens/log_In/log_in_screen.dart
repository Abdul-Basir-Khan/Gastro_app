import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/home_screen.dart';
import 'package:gastro_app/Screens/sign_up/sign_up.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Column(
            children: [
              const SizedBox(height: 10,),
              Icon(Icons.playlist_add_check_circle_sharp,color: Colors.amber.shade600,),
              const Text("Help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueGrey),)
            ],
          ),
          actions: [
            Column(
              children: [
                const SizedBox(height: 10,),
                Icon(Icons.arrow_circle_right_outlined,color: Colors.amber.shade600,),
                const Text("Skip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueGrey),)
              ],
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              const SizedBox(height: 30,),
              const Center(child: Image(
                width: 210,height: 50,
                  image: AssetImage("Assets/images/logIn/logo.png"))),
              const SizedBox(height: 60,),
              Row(
                children:[
                   Expanded(
                     child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Country",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600))),
                  ),
                   ),
                  const SizedBox(width: 30,),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: "Phone No",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600))),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              TextField(
                obscureText: passwordVisible,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: passwordVisible
                            ? Icon(Icons.visibility_off,color: Colors.grey.shade600,)
                            : Icon(
                          Icons.visibility,
                          color: Colors.grey.shade600,
                        )

                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Spacer(),
                  TextButton(onPressed: (){
                    setState(() {

                    });
                  }, child:Text("Forgot Password",style: TextStyle(fontSize: 14,color: Colors.grey.shade600),) )
                ],
              ),
              const SizedBox(height: 70,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueGrey.shade900,
                  ),
                  child: Center(child: Text("SignIn",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber.shade500),)),
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  setState(() {


                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade900)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const  Image(
                        height: 30,width: 30,
                          image: AssetImage("Assets/images/logIn/google.jpeg")),
                      const SizedBox(width: 30,),
                      Text("Sign In With Google",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.grey.shade600),),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 2,color: Colors.grey.shade400,)),
                  const SizedBox(width: 10,),
                  Text("OR",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey.shade900),),
                  const SizedBox(width: 10,),
                  Expanded(child: Divider(thickness: 2,color: Colors.grey.shade400,)),
                ],
              ),
              const SizedBox(height: 40,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade900),
                    color: Colors.white,
                  ),
                  child: Center(child: Text("CREATE ACCOUNT",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber.shade500),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
