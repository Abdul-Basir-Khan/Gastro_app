import 'package:flutter/material.dart';



class ReusableContainer extends StatelessWidget {
  final String ImageLink;
  final String Text1;
  final String Text2;
  final VoidCallback RequiresOnTap;
  const ReusableContainer({Key? key, required this.ImageLink, required this.Text1, required this.Text2, required this.RequiresOnTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: RequiresOnTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(ImageLink),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text:Text1,style:const  TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: Text2,style:const  TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500)
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
