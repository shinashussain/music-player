import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'map.dart';


class playlist extends StatelessWidget {
  
  final malayalamSongs ;
   playlist({ required this.malayalamSongs
    
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44.h,
        width: 158.w,
        decoration: BoxDecoration(
          color: Color(0xFFD17736),
          borderRadius: BorderRadius.circular(11).r,
        ),
        child: Row(
          children: [
            Container(
              height: 44.h,
              width: 47.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11).r,
              ),
              child: Image.asset('assets/play1.png'),
            ),
            Padding(padding: const EdgeInsets.only(left: 8, top: 7).w.h),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 8).w),
                Text(
                  'Best of 2024',
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
                Text(
                  'By Pedro',
                  style: TextStyle(
                    fontSize: 9.0.sp,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
