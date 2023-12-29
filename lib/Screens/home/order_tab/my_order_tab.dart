import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/order_tab/delivery_menu.dart';
import 'package:gastro_app/Screens/home/order_tab/detail_screen.dart';
import 'package:gastro_app/Screens/home/order_tab/my_order_container.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  bool _isVisibleO =false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey.shade200),
            child: const Text(
              "Meals Changes, Pause And Resume Can Be Made 3 Days \nIn Advance",textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ),

          OrderContainers(
            ImageLink: 'Assets/images/order/C4.jpeg',
            Text1: 'Order Number: 19575',
            Text2: 'KW - Weight Loss Plan',
            Text3: '17-10-2022',
            Text4: '2 Meals Per Day - Low',
            Text5: '2 Meals 2 Snacks',
            RequiresOnTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const  DetailsScreen()));

                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.yellow.shade700),
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("Assets/icons/home/order.png")),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListView(
                          children: [
                            Center(
                              child: Text("Pause Subsription",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.w500,color: Colors.teal.shade800
                              ),),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.grey.shade200),
                              child: const Text(
                                "Your Subsription Will Be Paused From The Above Date.You Can Only Paused For 2 Times. Please Confirm To Proceed",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                            ),
                            Center(child: Icon(Icons.arrow_drop_up,color: Colors.amber.shade400,size: 35,)),
                            Container(
                              width:double.infinity,
                              margin: EdgeInsets.only(top:10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.yellow.shade700),
                              ),
                              child: const Center(
                                child:  Text(
                                  "22/11/2022",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              width:double.infinity,
                              margin: EdgeInsets.only(top:10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.yellow.shade700),
                              ),
                              child: const Center(
                                child:  Text(
                                  "22/11/2022",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              width:double.infinity,
                              margin: EdgeInsets.only(top:10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.yellow.shade700),
                              ),
                              child: const Center(
                                child:  Text(
                                  "22/11/2022",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              width:double.infinity,
                              margin: EdgeInsets.only(top:10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.yellow.shade700),
                              ),
                              child: const Center(
                                child:  Text(
                                  "22/11/2022",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              width:double.infinity,
                              margin: EdgeInsets.only(top:10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.yellow.shade700),
                              ),
                              child: const Center(
                                child:  Text(
                                  "22/11/2022",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Center(child: Icon(Icons.arrow_drop_down,color: Colors.amber.shade400,size: 35,)),
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.teal.shade800
                                ),
                                child: Center(
                                  child: Text("PAUSE",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.amber.shade400,fontSize: 18),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.yellow.shade700),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.pause_circle_outline,
                          color: Colors.green.shade600,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Pause Subscription",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
              setState(() {
                _isVisibleO=!_isVisibleO;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.yellow.shade700),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: Colors.green.shade600,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "View Delivery Dates and Re-Select Meals",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),Visibility(
              visible: _isVisibleO,
              child: Column(
            children: [
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryMenu()));
                  });
                },
                child: OrderContainers(
                  ImageLink: 'Assets/images/order/C1.jpeg',
                  Text1: 'Order Number: 19575',
                  Text2: 'KW - Weight Loss Plan',
                  Text3: '17-10-2022',
                  Text4: '2 Meals Per Day - Low',
                  Text5: '2 Meals 2 Snacks',
                  RequiresOnTap: () {},
                ),
              ),
              InkWell(
                onTap:(){
    setState(() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryMenu()));
    });
    },
                child: OrderContainers(
                  ImageLink: 'Assets/images/order/C2.jpeg',
                  Text1: 'Order Number: 19575',
                  Text2: 'KW - Weight Loss Plan',
                  Text3: '17-10-2022',
                  Text4: '2 Meals Per Day - Low',
                  Text5: '2 Meals 2 Snacks',
                  RequiresOnTap: () {},
                ),
              ),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryMenu()));
                  });
                },
                child: OrderContainers(
                  ImageLink: 'Assets/images/order/C3.jpeg',
                  Text1: 'Order Number: 19575',
                  Text2: 'KW - Weight Loss Plan',
                  Text3: '17-10-2022',
                  Text4: '2 Meals Per Day - Low',
                  Text5: '2 Meals 2 Snacks',
                  RequiresOnTap: () {},
                ),
              ),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryMenu()));
                  });
                },
                child: OrderContainers(
                  ImageLink: 'Assets/images/order/C4.jpeg',
                  Text1: 'Order Number: 19575',
                  Text2: 'KW - Weight Loss Plan',
                  Text3: '17-10-2022',
                  Text4: '2 Meals Per Day - Low',
                  Text5: '2 Meals 2 Snacks',
                  RequiresOnTap: () {},
                ),
              ),
            ],
          )),

        ],
      ),
    );
  }
}
