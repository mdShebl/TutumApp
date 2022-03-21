import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


Widget pillIcon(Color color){
  return SvgPicture.asset(
      'images/pill-svgrepo-com.svg',
      color: color,
      width:30,
      height:30,
  );

}


