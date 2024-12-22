import 'package:flutter/material.dart';
import 'package:music_player/lodingscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const  _musicPlayrState());
}
class _musicPlayrState extends StatefulWidget {
  const _musicPlayrState({super.key});

  @override
  State<_musicPlayrState> createState() => __musicPlayrStateState();
}

class __musicPlayrStateState extends State<_musicPlayrState> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
       return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Lodingscreen(),
      );
      }
      
    );
  }
  }
  