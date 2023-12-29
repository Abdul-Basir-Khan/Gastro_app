import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible = false;
  bool _isChecked  = false;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child :
        Scaffold(backgroundColor: Colors.white,
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
                            hintText: "First Name",
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
                            hintText: "Last Name",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade600)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade600))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
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
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Email",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600)),
                      enabledBorder:  UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600))
                  ),
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
              Checkbox(
                side: BorderSide(
                  color: Colors.amber.shade900
                ),
                activeColor: Colors.amber.shade900,
                checkColor: Colors.amber.shade900,
              value: _isChecked,
              onChanged: (bool? value) {
              setState(() {
              _isChecked =!_isChecked;
              });
              },
              ),
                    RichText(
                      text: TextSpan(
                        text: 'By Registering I Agree To The ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms And Condition',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.amber.shade900
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(
                      side: BorderSide(
                          color: Colors.amber.shade900
                      ),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked1=!_isChecked1;
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I Accept And Agree To The',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Company',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.amber.shade900
                            ),
                          ),
                          TextSpan(
                            text: ' And',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade900
                            ),
                          ),
                          TextSpan(
                            text: '\nCookie Policy',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.amber.shade900
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(
                      side: BorderSide(
                          color: Colors.amber.shade900
                      ),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked2 =!_isChecked2;
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I Confirm And Accept The Gastro',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Food Allergies\nPolicy',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.amber.shade900
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    setState(() {


                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey.shade900,
                    ),
                    child: Center(child: Text("CREATE ACCOUNT",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber.shade500),)),
                  ),
                ),
                const SizedBox(height: 20,),
                Center(child: Text("Already Have An Account?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade900),)),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade900),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("BACK",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber.shade500),)),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
