import 'package:flutter/material.dart';

class OrderContainers extends StatelessWidget {
  final String ImageLink;
  final String Text1;
  final String Text2;
  final String Text3;
  final String Text4;
  final String Text5;
  final VoidCallback RequiresOnTap;
  const OrderContainers({Key? key, required this.ImageLink, required this.Text1, required this.Text2, required this.Text3, required this.Text4, required this.Text5, required this.RequiresOnTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding:const  EdgeInsets.all(10),
      height: 120,
      width: MediaQuery.of(context).size.width*1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
          image:DecorationImage(
            opacity: 1,
              fit: BoxFit.cover,
              image: AssetImage(ImageLink)
          )
      ),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             const Spacer(),
              Text(Text1,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),),
            ],
          ),
         const  SizedBox(height: 20,),
          Row(children: [
            Text(Text2,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white)),
            const Spacer(),
            Text(Text3,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white)),
          ],),
       const    SizedBox(height: 20,),
          Row(children: [
            Text(Text4,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white)),
            const Spacer(),
            Text(Text5,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white)),
          ],),
        ],
      ),
    );
  }
}
