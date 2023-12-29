import 'package:flutter/material.dart';


class UserGuideScreen extends StatefulWidget {
  const UserGuideScreen({Key? key}) : super(key: key);

  @override
  State<UserGuideScreen> createState() => _UserGuideScreenState();
}

class _UserGuideScreenState extends State<UserGuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
         const ListTile(
           leading: Image(
             height: 40,width:40,
             image: AssetImage("Assets/icons/home/user.png"),

           ),
           title: Text("How To Register",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
         ),
          Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
          const ListTile(
            leading: Image(
              height: 40,width:40,
              image: AssetImage("Assets/icons/home/user.png"),

            ),
            title: Text("Make A New Subscription",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
          ),
          Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
          const ListTile(
            leading: Image(
              height: 40,width:40,
              image: AssetImage("Assets/icons/home/user.png"),

            ),
            title: Text("Changing Your Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
          ),
          Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
          const ListTile(
            leading: Image(
              height: 40,width:40,
              image: AssetImage("Assets/icons/home/user.png"),

            ),
            title: Text("Changing Your Meals",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
          ),
          Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
          const ListTile(
            leading: Image(
              height: 40,width:40,
              image: AssetImage("Assets/icons/home/user.png"),
            ),
            title: Text("Pausing And Resuming",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
          ),
          Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        ],
      ),
    );
  }
}

