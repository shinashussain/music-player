import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:music_player/map.dart';
import 'package:music_player/playlist.dart';
import 'next_screen.dart';
import 'likesongs.dart';

class Lodingscreen extends StatefulWidget {
  const Lodingscreen({super.key});

  @override
  State<Lodingscreen> createState() => _LodingscreenState();
}

class _LodingscreenState extends State<Lodingscreen> {
  double currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF513f57),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: AppBar(
          backgroundColor: Color(0XFF513f57),
          leading: Icon(Icons.menu),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search),
              SizedBox(
                width: 73.w,
                height: 11.h,
              ),
              Icon(Icons.person_2_sharp),
              SizedBox(
                width: 130.w,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/girl.jpeg'),
              ),
            ],
          ),
          flexibleSpace: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 68, left: 25).h.w,
              child: Text(
                'your plylist',
                style: TextStyle(
                  fontSize: 30.sp,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color(0XFF655676),
              height: 120.h,
              width: 375.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 18, top: 10).w.h,
                          child: playlist(1)),
                      Padding(
                        padding:
                            EdgeInsets.only(right: 18, top: 10, bottom: 6).w.h,
                        child: playlist(2),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 6).w.h,
                        child: playlist(3),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18, top: 6).w.h,
                        child: playlist(4),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23).w,
              child: Text(
                'like song',
                style: TextStyle(
                  fontSize: 23.25.sp,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 198.h,
                  width: 378.w,
                  color: Color(0XFF69596F),
                  child: Column(
                    children: [
                     Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 15,
              itemBuilder: (ctx,int){
                return Card(
                  color: Color(0XFF69596F),
                  child: Column(
                    children: [
                      likedsongs(1),
                    
                      
                    ],
                  ),
                );
              },
            ),
          ),
                    ],
                  ),
                ),
              ],
            ), 
           
            
            Container(
              height: 289.5.h,
              width: 372.w,
              color: Color(0XFF2F2134),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 199).w,
                    child: Text(
                      'recently played',
                      style: TextStyle(
                        fontSize: 23.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 106.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11).r,
                          color: Colors.black,
                          image: DecorationImage(image: AssetImage('assets/play1.png'),
                          fit: BoxFit.cover)
                        ),
                      
                      ),
                      SizedBox(
                        width: 27.w,
                      ),
                      Container(
                        height: 106.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11).r,
                          color: Colors.black,
                        ),
                        child: Image.asset('assets/play2.png'),
                      ),
                      SizedBox(
                        width: 27.w,
                      ),
                      Container(
                        height: 106.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11).r,
                          color: Colors.black,
                        ),
                        child: Image.asset('assets/play3.png'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14).w,
                        child: Text(
                          'ameen',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                        ).w,
                        child: Text(
                          'ameen',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70).w,
                        child: Text(
                          'ameen',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return NextScreen();
            }),
          );
        },
        child: BottomAppBar(
          height: 107.h,
          color: Color(0XFF655676),
          child: Column(
            children: [
              ProgressBar(
                progress: Duration(milliseconds: 1000),
                total: Duration(milliseconds: 5000),
                progressBarColor: Colors.white,
                baseBarColor: Colors.white.withOpacity(0.24),
                bufferedBarColor: Colors.white.withOpacity(0.24),
                thumbColor: Colors.white,
                barHeight: 7.1.h,
                thumbRadius: 5.0.r,
              ),
              Row(
                children: [
                  Container(
                    height: 41.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11).r,
                    ),
                    child: Image.asset('assets/play1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0).w,
                    child: Text('ameen'),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_previous,
                      )),
                  IconButton(onPressed: () {}, icon: Icon(Icons.pause)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shuffle)),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

