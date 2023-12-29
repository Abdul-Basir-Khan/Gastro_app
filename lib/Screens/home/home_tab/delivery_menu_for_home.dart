import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/home_tab/meal_selection.dart';


class DeliveryHome extends StatefulWidget {
  const DeliveryHome({Key? key}) : super(key: key);

  @override
  State<DeliveryHome> createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {


  bool  _isCheckedD1 =false;
  bool  _isCheckedD2 =false;
  bool  _isCheckedD3 =false;
  bool  _isCheckedD4 =false;
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
            "Delivery Menu",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.teal.shade800),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: const Text(
                  "If Skipped We Will Select For You: Our Menu Chnages Every 3 Days",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade900,
                ),
                child: Row(
                  children: const [
                    Text(
                      "Delivery Date",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Spacer(),

                    Text(
                      "(13-06-2023)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child:

                ListTile(
                  leading:  Checkbox(
                    side: BorderSide(color: Colors.yellow.shade700),
                    activeColor: Colors.amber.shade900,
                    checkColor: Colors.amber.shade900,
                    value: _isCheckedD1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheckedD1= !_isCheckedD1;
                      });
                    },
                  ),
                  title:   const Text(
                    "Day 1 - (Tuesday)",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                )
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade900,
                ),
                child: Row(
                  children: const [
                    Text(
                      "Delivery Date",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Spacer(),

                    Text(
                      "(13-06-2023)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade700),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:

                  ListTile(
                    leading:  Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD2,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD2= !_isCheckedD2;
                        });
                      },
                    ),
                    title:   const Text(
                      "Day 2 - (Wednesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  )
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade900,
                ),
                child: Row(
                  children: const [
                    Text(
                      "Delivery Date",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Spacer(),

                    Text(
                      "(13-06-2023)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade700),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:

                  ListTile(
                    leading:  Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD3,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD3= !_isCheckedD3;
                        });
                      },
                    ),
                    title:   const Text(
                      "Day 3 - (Thursday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  )
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade900,
                ),
                child: Row(
                  children: const [
                    Text(
                      "Delivery Date",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Spacer(),

                    Text(
                      "(13-06-2023)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade700),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:

                  ListTile(
                    leading:  Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD4,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD4= !_isCheckedD4;
                        });
                      },
                    ),
                    title:   const Text(
                      "Day 4 - (Friday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  )
              ),
              const Spacer(),

              Row(
                children: [
                  InkWell(

                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                          color:Colors.white,
                          border: Border.all(color: Colors.green.shade900)

                      ),
                      child: Text(
                        "Previous",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.yellow.shade800
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(

                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MealSelection()));
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.green.shade900,

                      ),
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.yellow.shade800
                        ),
                      ),
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
