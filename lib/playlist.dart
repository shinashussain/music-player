import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'map.dart';

class playlist extends StatelessWidget {
  int index = 0;
  late Map<String, dynamic> songs;
  playlist(this.index);

  @override
  Widget build(BuildContext context) {
    songs = malayalamSongs[index];
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
                    image: DecorationImage(
                      image: AssetImage(songs['image']),
                      fit: BoxFit.cover,
                    ))),
            Padding(padding: const EdgeInsets.only(left: 8, top: 7).w.h),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 8).w),
                Text(
                  songs['SONGS'],
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
                // ignore: prefer_interpolation_to_compose_strings
                Text(
                  'by ' + songs['artist'],
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
