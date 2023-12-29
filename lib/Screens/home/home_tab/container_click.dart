import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/home_tab/select_date.dart';

class ContainerClicked extends StatefulWidget {
  const ContainerClicked({Key? key}) : super(key: key);

  @override
  State<ContainerClicked> createState() => _ContainerClickedState();
}

class _ContainerClickedState extends State<ContainerClicked> {
  int _currentIndex = 0;

  final List<String> days = [
    "2 Days",
    "3 Days",
    "4 Days",
    "5 Days",
    "6 Days",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon:const Icon( Icons.close,
                            color: Colors.grey,), onPressed:(){
                            Navigator.pop(context);
                            },
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Image(
                          height: 120,width: 180,

                          image: AssetImage("Assets/images/home/Gastro.png"))
                    ),
                    Text(
                      "2 Meals Per Day - Avg 200g(New)",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade900),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "All stated weights are average",
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: Colors.grey.shade300,
                child: Text(
                  "Select Plan Duration",
                  style: TextStyle(fontSize: 17, color: Colors.green.shade900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.red.shade900,
                      size: 30,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: days.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.only(bottom: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == _currentIndex
                                  ? Colors.yellow.shade800
                                  : Colors.white,
                              border: Border.all(
                                  color: index == _currentIndex
                                      ? Colors.transparent
                                      : Colors.yellow.shade800),
                            ),
                            child: Text(
                              days[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: index == _currentIndex
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: index == _currentIndex
                                      ? FontWeight.w700
                                      : FontWeight.w400),
                            ),
                          ),
                        );
                      },
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red.shade900,
                      size: 30,
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: Colors.yellow.shade800,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Plan Cost:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Text(
                          "€ 58.00",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellow.shade800),
                        ),
                        const Spacer(),
                        const SizedBox(),
                      ],
                    ),
                    Divider(
                      color: Colors.yellow.shade800,
                      thickness: 2,
                    ),
                    Text(
                      "Plan Does Not Include Money",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.red.shade500),
                    ),
                    SizedBox(height: 10,),
                    InkWell(

                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SelectDate()));
                        });
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.green.shade900,

                        ),
                        child: Text(
                          "Next",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}




