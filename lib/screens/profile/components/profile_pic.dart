import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children:[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/copy_prof.png'),
          ),
          Positioned(
            bottom: 0,
            right: -10,
            child: SizedBox(
              height: 46,
              width: 46,
              child: MaterialButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),side: BorderSide(color: Colors.white)),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
