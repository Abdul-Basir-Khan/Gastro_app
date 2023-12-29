import 'package:flutter/material.dart';


class MealSelection extends StatefulWidget {
  const MealSelection({Key? key}) : super(key: key);

  @override
  State<MealSelection> createState() => _MealSelectionState();
}

class _MealSelectionState extends State<MealSelection> {
  bool _isCheckedH1 = false;
  bool _isCheckedH2 = false;
  bool _isCheckedH = false;
  bool  _isVisible0 = false;
  bool  _isVisible1 = false;
  bool  _isVisible2  = false;
  var x=1;
  var y=1;
  var z=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(


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
          "Meal Selection",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.teal.shade800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(

          children: [

          Row(
            children: [
              const Text("13-06-2023",style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black
              ),),
              const Spacer(),
              Visibility(
                  visible: _isVisible0  |  _isVisible1|_isVisible2 ,
                  child:_isVisible2?const Text("210 KCal",style: TextStyle(
                      fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black
                  ),):_isVisible1?const Text("410 KCal",style: TextStyle(
                      fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black
                  ),): const Text("302 KCal",style: TextStyle(
                fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black
              ),)

              ),
            ],
          ),
          const SizedBox(height: 10,),
          Divider(thickness: 2,color: Colors.grey.shade600,height: 2,),
          const SizedBox(height: 10,),
          Row(
            children: const [
              Text("Meals 0 Of 2",style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black
              ),),
               Spacer(),
               Text("Snacks 1 Of 1",style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black
              ),),
            ],
          ),
          const SizedBox(height: 10,),
          Divider(thickness: 2,color: Colors.grey.shade600,height: 2,),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                side: BorderSide(color: Colors.yellow.shade700),
                activeColor: Colors.amber.shade900,
                checkColor: Colors.amber.shade900,
                value: _isCheckedH,
                onChanged: (bool? value) {
                  setState(() {
                    _isCheckedH= !_isCheckedH;
                  });
                },
              ),
              Container(
                height: 100,width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("Assets/images/order/C1.jpeg")
                  )
                ),
              ),
              const SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Snacks",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.teal.shade700),),
                  const Text("Quinoa Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                Visibility(
                  visible: _isVisible0,

                  child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          x++;
                        });
                      },
                      icon:
                      Icon(
                        Icons.add_circle_outline_outlined,color: Colors.yellow.shade700,),),
                    Text(x.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          if(x!=0){
                            x--;
                          }
                        });
                      },

                      icon:Icon(Icons.remove_circle_outline_rounded,color: Colors.yellow.shade700,),),
                  ],
                ),),
                  Row(
                    children: [
                      IconButton(
                        onPressed:(){
                          setState(() {
                            _isVisible0= !_isVisible0;
                          });
                        },
                         icon: Icon(Icons.arrow_downward_outlined,color: Colors.yellow.shade700,)
                      ),
                      const Text("Ingredients And Macros",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),

                    ],
                  ),
                 ],
              ),
            ],
          ),
          Visibility(
              visible: _isVisible0,
              child:  const Text("Ingredients: Lettuce, Rocket Leaves, QUINOA,Cucomber, Red Capsicum Cubes, ChickPies(BOILED),Grated, Carrots,Feta,Cheese Cubes, Black Olives, Basil Lives, Thyme,And A Balsamic Vinaigrette",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
          const SizedBox(height: 10,),
          Divider(thickness: 2,color: Colors.grey.shade600,height: 2,),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                side: BorderSide(color: Colors.yellow.shade700),
                activeColor: Colors.amber.shade900,
                checkColor: Colors.amber.shade900,
                value: _isCheckedH1,
                onChanged: (bool? value) {
                  setState(() {
                    _isCheckedH1= !_isCheckedH1;
                  });
                },
              ),
              Container(
                height: 100,width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("Assets/images/order/C2.jpeg")
                    )
                ),
              ),
              const SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Snacks",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.teal.shade700),),
                  const Text("Quinoa Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                  Visibility(
                    visible: _isVisible1,

                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            setState(() {
                              z++;
                            });
                          },
                          icon:
                          Icon(
                            Icons.add_circle_outline_outlined,color: Colors.yellow.shade700,),),
                        Text(z.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                        IconButton(
                          onPressed: (){
                            setState(() {
                              if(z!=0){
                                z--;
                              }
                            });
                          },

                          icon:Icon(Icons.remove_circle_outline_rounded,color: Colors.yellow.shade700,),),
                      ],
                    ),),
                  Row(
                    children: [
                      IconButton(
                          onPressed:(){
                            setState(() {
                              _isVisible1= !_isVisible1;
                            });
                          },
                          icon: Icon(Icons.arrow_downward_outlined,color: Colors.yellow.shade700,)
                      ),
                      const Text("Ingredients And Macros",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),

                    ],
                  ),
                ],
              ),
            ],
          ),
          Visibility(
              visible: _isVisible1,
              child:  const Text("Ingredients: Lettuce, Rocket Leaves, QUINOA,Cucomber, Red Capsicum Cubes, ChickPies(BOILED),Grated, Carrots,Feta,Cheese Cubes, Black Olives, Basil Lives, Thyme,And A Balsamic Vinaigrette",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
          const SizedBox(height: 10,),
          Divider(thickness: 2,color: Colors.grey.shade600,height: 2,),

          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                side: BorderSide(color: Colors.yellow.shade700),
                activeColor: Colors.amber.shade900,
                checkColor: Colors.amber.shade900,
                value: _isCheckedH2,
                onChanged: (bool? value) {
                  setState(() {
                    _isCheckedH2= !_isCheckedH2;
                  });
                },
              ),
              Container(
                height: 100,width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("Assets/images/order/C3.jpeg")
                    )
                ),
              ),
              const SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Snacks",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.teal.shade700),),
                  const Text("Quinoa Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                  Visibility(
                    visible: _isVisible2,

                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            setState(() {
                              y++;
                            });
                          },
                          icon:
                          Icon(
                            Icons.add_circle_outline_outlined,color: Colors.yellow.shade700,),),
                        Text(y.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                        IconButton(
                          onPressed: (){
                            setState(() {
                              if(y!=0){
                                y--;
                              }
                            });
                          },

                          icon:Icon(Icons.remove_circle_outline_rounded,color: Colors.yellow.shade700,),),
                      ],
                    ),),
                  Row(
                    children: [
                      IconButton(
                          onPressed:(){
                            setState(() {
                              _isVisible2= !_isVisible2;
                            });
                          },
                          icon: Icon(Icons.arrow_downward_outlined,color: Colors.yellow.shade700,)
                      ),
                      const Text("Ingredients And Macros",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),

                    ],
                  ),
                ],
              ),
            ],
          ),
          Visibility(
              visible: _isVisible2,
              child:  const Text("Ingredients: Lettuce, Rocket Leaves, QUINOA,Cucomber, Red Capsicum Cubes, ChickPies(BOILED),Grated, Carrots,Feta,Cheese Cubes, Black Olives, Basil Lives, Thyme,And A Balsamic Vinaigrette",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
          const SizedBox(height: 10,),
          Divider(thickness: 2,color: Colors.grey.shade600,height: 2,),
          const SizedBox(height: 90,),
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

        ],),
      ),
    ));
  }
}
