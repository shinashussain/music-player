import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
        
        title: Row(

          children: [
            SizedBox(width: 66.w,),
            Text('now plying'),
            SizedBox(width: 83.w,),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
      ),
      
      backgroundColor: Colors.transparent,
      body: Stack(
       
        children: [
          Image.asset('assets/plays1.jpg'
          ),
          Container(
            margin: EdgeInsets.only(top: 386).h,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180).w,
                  child: Text('plying song',style: TextStyle(
                    fontSize: 29.sp,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 186.0).w,
                  child: Text('ameen',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),),

                ),
                SizedBox(
                  height: 8.h,
                ),
               
                 Container(
                  width: 330.w,
                   child: ProgressBar(progress:Duration(milliseconds: 1000), total: Duration(milliseconds: 5000),
                     progressBarColor: Colors.white,
                    baseBarColor: Colors.white.withOpacity(0.24),
                    bufferedBarColor: Colors.white.withOpacity(0.24),
                    thumbColor: Colors.white,
                    barHeight: 3.1.h,
                    
                    thumbRadius: 5.0.w,
                   
                    ),
                 ),
                
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0).w,
                    child: Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 40,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.pause,size: 40,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,size: 40,)),
                           IconButton(onPressed: (){}, icon: Icon(Icons.shuffle,size: 40,))
                          ]),
                    ),
                  ),
              ],
            ),
          )
        ],
      )
    );
      }
    );
  
  }
  }




