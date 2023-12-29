import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/home_tab/container_click.dart';
import 'package:gastro_app/Screens/home/reusable_ListTiles.dart';
import 'package:gastro_app/Screens/home/reusable_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  bool _isVisible = false;
  bool _isVisible1= false;
  bool _isVisible2= false;
  final PageController _pageController = PageController();

  final List<Widget> _containerList = <Widget>[
    Container(
      margin: const EdgeInsets.only(right: 10,bottom: 10,top: 10),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage("Assets/images/home/p1.jpg"),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 30, right: 80),
        child: Container(
          height: 60,
          width: 180,
          decoration: const BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: const Text(
            "Order Now Pay Later With\nKlarna",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
    Container(
      height: 170,
      margin: const EdgeInsets.only(right: 10,bottom: 10,top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage("Assets/images/home/pic1.jpeg"),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 30, right: 140),
        child: Container(
          height: 60,
          width: 180,
          decoration: const BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: const Text(
            "Monday 29 Is Bank\nHoliday",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (num) {
                setState(() {
                  _current = num;
                });
              },
              children: _containerList,
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count:  _containerList.length,
            axisDirection: Axis.horizontal,
            effect:  SlideEffect(
                spacing:  8.0,
                radius:  20.0,
                dotWidth:  15.0,
                dotHeight:  14.0,
                paintStyle:  PaintingStyle.stroke,
                strokeWidth:  1.5,
                dotColor:  Colors.yellow.shade700,
                activeDotColor:  Colors.yellow.shade700
            ),
          ),
          Column(
            children: [
              ReusableContainer(ImageLink: 'Assets/images/home/pic3.jpg', Text1: 'UK - Balanced 6 Programs', Text2: '\n\nMeals 6 Days Per Week', RequiresOnTap: () {
                setState(() {
                  _isVisible=!_isVisible;
                });
              },),
              Visibility(
                  visible: _isVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const   SizedBox(height: 10,),
                      Text("Select Plan",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.green.shade700),),
                      InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));
                            });
                          },
                          child: ReusableListTile(Text1: 'Two Meals Per Day', Text2: '2 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),
                      InkWell(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));
                            });
                          },
                          child: ReusableListTile(Text1: 'Three Meals Per Day', Text2: '3 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),
                      InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));

                            });
                          },
                          child: ReusableListTile(Text1: 'One Meals Per Day', Text2: '1 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),
                      InkWell(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));
                            });
                          },
                          child: ReusableListTile(Text1: 'Four Meals Per Day', Text2: '4 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),


                    ],
                  ))
            ],
          ),
          Column(
            children: [
              ReusableContainer(ImageLink: 'Assets/images/home/p3.jpg', Text1: 'UK - Balanced 7 Programs', Text2: '\n\nMeals 6 Days Per Week', RequiresOnTap: () {
                setState(() {
                  _isVisible1=!_isVisible1;
                });
              },),
              Visibility(
                  visible: _isVisible1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const   SizedBox(height: 10,),
                      Text("Select Plan",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.green.shade700),),
                      InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));

                            });
                          },

                          child: ReusableListTile(Text1: 'Two Meals Per Day -7 Days',Text3: '2 Meals, 0 Snacks', colorText3:Colors.grey.shade500 ,)),
                      InkWell(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));
                            });
                          },
                          child

                          : ReusableListTile(Text1: 'One Meals Per Day -7 Days',Text3: '1 Meals, 0 Snacks', colorText3:Colors.grey.shade500,)),
                    ],
                  ))
            ],
          ),
          Column(
            children: [
              ReusableContainer(ImageLink: 'Assets/images/home/pic6.jpeg', Text1: 'Gym Plans', Text2: '\n\nAverage Per Meal 200g Protein Source, 200g Carb Source, 650 kcal', RequiresOnTap: () {
                setState(() {
                  _isVisible2=!_isVisible2;
                });
              },),
              Visibility(
                  visible: _isVisible2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const   SizedBox(height: 10,),
                      Text("Select Plan",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.green.shade700),),
                      InkWell(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 const  ContainerClicked()));
                            });
                          },
                          child: ReusableListTile(Text1: '2 Meals Per Day -Avg 200g(New)', Text2: '2 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),
                      InkWell(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));
                            });
                          },
                          child: ReusableListTile(Text1: '3 Meals Per Day -Avg 200g(New)', Text2: '3 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),
                      InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerClicked()));

                            });
                          },

                          child: ReusableListTile(Text1: '4 Meals Per Day -Avg 200g(New)', Text2: '1 Meals, 0 Snacks',Text3: 'Plans Does Not Include Mon', colorText2: Colors.grey.shade400, colorText3: Colors.red.shade700,)),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
