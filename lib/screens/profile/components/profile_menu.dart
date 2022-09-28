import 'package:e_comerece_app/constant.dart';
import 'package:flutter/material.dart';
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key, required this.iconData, required this.text,
  }) : super(key: key);
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(15),
          color: Color(0xFFF5F6F9),
          onPressed: (){}, child: Row(
        children: [
          Icon(iconData,color: kPrimaryColor,size: 28,),
          SizedBox(width: 20,),
          Expanded(child: Text(text,style: Theme.of(context).textTheme.bodyText1,)),
          Icon(Icons.arrow_forward)
        ],
      )),
    );
  }
}

