import 'package:flutter/material.dart';


class SettingAndInfo extends StatefulWidget {
  const SettingAndInfo({Key? key}) : super(key: key);

  @override
  State<SettingAndInfo> createState() => _SettingAndInfoState();
}

class _SettingAndInfoState extends State<SettingAndInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(12),
    child: Column(
      children: [

        const ListTile(
          leading: Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/country.png"),
          ),
          title: Text("Country",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading: Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/term.png"),
          ),
          title: Text("Term And Policy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading: Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/delivery.png"),
          ),
          title: Text("Delivery Policy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading: Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/privacy.png"),
          ),
          title: Text("Privacy Policy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading: Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/cookiew.png"),
          ),
          title: Text("Cookie Policy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading:

          Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/i.png"),
          ),
          title: Text("About Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading:

          Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/about_plans.png"),
          ),
          title: Text("About The Plans",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
        Divider(thickness: 2,color: Colors.grey.shade400,height: 2,),
        const ListTile(
          leading: Image(
            height: 40,width:40,
            image: AssetImage("Assets/icons/setting/contact.png"),
          ),
          title: Text("Contact Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),) ,
        ),
   const SizedBox(height: 90,),
        const Image(
          height: 150,width:150,
          image: AssetImage("Assets/images/home/version.png"),
        ),
      ],
    ),);
  }
}
