import 'package:flutter/material.dart';

class CalorieCalculator extends StatefulWidget {
  const CalorieCalculator({Key? key}) : super(key: key);

  @override
  State<CalorieCalculator> createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {
  bool male = false;
  bool feMale = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.teal.shade900,
                  )),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal.shade900,
                ),
                child: const Text(
                  "Please Fill Below Details",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 15,
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          Text(
                            "Male",
                            style: TextStyle(
                              color: Colors.green.shade900,
                              fontSize: 15,
                            ),
                          ),
                          Checkbox(
                            side: BorderSide(color: Colors.yellow.shade700),
                            activeColor: Colors.amber.shade900,
                            checkColor: Colors.amber.shade900,
                            value: male,
                            onChanged: (bool? value) {
                              setState(() {
                                male = true;
                                feMale = false;
                              });

                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              color: Colors.green.shade900,
                              fontSize: 15,
                            ),
                          ),
                          Checkbox(
                            side: BorderSide(color: Colors.yellow.shade700),
                            activeColor: Colors.amber.shade900,
                            checkColor: Colors.amber.shade900,
                            value: feMale,
                            onChanged: (bool? value) {
                              setState(() {
                                male = false;
                                feMale = true;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                          width: double.infinity,
                          child: Divider(
                            thickness: 1,
                          ))
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Weight",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 15,
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal.shade900)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.teal.shade900)),
                        hintText:"kg",
                        hintStyle: TextStyle(color:Colors.teal.shade900)
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Height",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 15,
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal.shade900)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.teal.shade900)),
                        hintText:"cm",
                        hintStyle: TextStyle(color: Colors.teal.shade900)
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(

                  child: Text(
                    "Age",
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontSize: 15,
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:"years",
                        hintStyle: TextStyle(color:Colors.teal.shade900),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal.shade900)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color:Colors.teal.shade900)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(

                  child: Text(
                    "Activity",
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontSize: 15,
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.teal.shade900)),
    enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color:Colors.teal.shade900)),
                        suffixIcon: Column(
                          children: [
                            Icon(Icons.arrow_drop_up,color:Colors.teal.shade900,),
                            Icon(Icons.arrow_drop_down,color: Colors.teal.shade900,),
                          ],
                        ),
                        hintText:"How Active Are You?",
                        hintStyle: TextStyle(color:Colors.teal.shade900)
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 80,),
            InkWell(
              onTap: (){

              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.teal.shade900,

                ),
                child: Text(
                  "Calculate",
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
    );
  }
}