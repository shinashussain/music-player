import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'map.dart';

class likedsongs extends StatelessWidget {
 
 int index = 0;
  late Map<String, dynamic> songs;
  likedsongs(this.index);


  @override
  Widget build(BuildContext context) {

    songs = malayalamSongs[index];
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 23).w),
        Container(
          height: 38.h,
          width: 38.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11).r,
              image: DecorationImage(image: NetworkImage(songs['imageurl']),
                          fit: BoxFit.cover)
                        
          ),
          
        ),
        Padding(padding: EdgeInsets.only(left: 4)),
        Column(
          children: [
            Text(songs['SONGS']),
            Text(songs['artist']),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: 164.69).w),
      Icon(Icons.favorite,color: Colors.red,size: 17,)
      ],
    );
  }
}
