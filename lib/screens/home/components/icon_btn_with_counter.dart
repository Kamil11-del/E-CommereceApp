import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class IconBtnWithContainer extends StatelessWidget {
  IconBtnWithContainer({
    Key? key, required this.icon,  this.itemCount=0, required this.press,
  }) : super(key: key);
  final  IconData icon;
  final int itemCount;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kSecondaryColor.withOpacity(0.1),
            ),
            child: Icon(icon),
          ),
          if(itemCount !=0)
            Positioned(
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.2,color: Colors.white)
                ),
                child: Center(
                  child: Text('$itemCount',style: TextStyle(color: Colors.white,fontSize: getProportionateScreenWidth(10),height: 1,),),
                ),
              ),
            )
        ],
      ),
    );
  }
}
