import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  final String Text1;
  final String? Text2;
  final String? Text3;
  final Color? colorText2;
  final Color? colorText3;

  const ReusableListTile({Key? key, required this.Text1, this.Text2, this.Text3, this.colorText2,this.colorText3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.yellowAccent.shade700)
      ),
      child: ListTile(
        leading:const  Image(
          image: AssetImage("Assets/images/home/Gastro.png"),),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Text1,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.black),),
            SizedBox(height: 5,),
            Text(Text2 ?? "",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color:colorText2 ),),
            SizedBox(height: 5,),
            Text(Text3 ?? "",style:  TextStyle(fontWeight: FontWeight.w300,fontSize: 16,color: colorText3),),
          ],
        ),
      ),
    );
  }
}


