import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/order_tab/my_order_container.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  bool _isVisibility = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.teal.shade800),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "My Order Details",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.teal.shade800),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              OrderContainers(
                ImageLink: 'Assets/images/order/C4.jpeg',
                Text1: '',
                Text2: '',
                Text3: '',
                Text4: '',
                Text5: '',
                RequiresOnTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Uk - Gym Plans",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal.shade900),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "4 Meals Per Day (New)",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const Spacer(),
                  Text(
                    "4 Meals 0 Snacks",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade400,
                height: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Duration",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal.shade900),
                  ),
                  const Spacer(),
                  Text(
                    "Start Date",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal.shade900),
                  ),
                  const Spacer(),
                  Text(
                    "End Date",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal.shade900),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children:const  [
                  Text(
                    "4 Weeks",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "22/11/2022",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "11/12/2022",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade400,
                height: 2,
              ),
              const SizedBox(
                height: 10,
              ),
          Visibility(

            visible: _isVisibility,

              child: Column(
            children: [
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.amber.shade400,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Type Your Food Notes",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Max Of 3 Notes, We Apologies We Don't Guarantee All Notes",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade900),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Type Your Food Notes",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Check All Ingredients! Do Not Order Dishes You Are Allergic To",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade900),
              ),
            ],
          )),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                 setState(() {

                   _isVisibility=!_isVisibility;
                 });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    children: [
                      const Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.edit,
                        color: Colors.amber.shade400,
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                text: "First Name: ",
                style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                children: [
                  TextSpan(
                    text: " Du",
                    style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                  )
                ]
              )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "Last Name: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " if",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "Address Line 1: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " 11 THE CRESENT",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "Address Line 2: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " ",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "City: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " LONDON",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "POST CODE: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " 3W 7PM",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "Country: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " UAE",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "OutSide Door/Gate Way (Not Flate No): ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " ",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  )

              ),
              const SizedBox(height: 10,),
              RichText(

                  text: const TextSpan(
                      text: "WhatsApp No: ",
                      style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.black),
                      children: [
                        TextSpan(
                          text: " ",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black),
                        )
                      ]
                  ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
