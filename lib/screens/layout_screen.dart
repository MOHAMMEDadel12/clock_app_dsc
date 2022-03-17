
import 'package:clock_app_dsc/screens/alarm_screen.dart';
import 'package:clock_app_dsc/screens/clock_screen.dart';
import 'package:clock_app_dsc/screens/stop_watch.dart';
import 'package:clock_app_dsc/screens/timer_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Clock App'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Image.asset('assets/world_icon.png' , height: 30,),
                child: Text('Alarm'),
              ),
              Tab(
                icon: Image.asset('assets/alarm_clock.png' , height: 30,),
                child: Text('Clocl'),

              ),
              Tab(
                icon: Image.asset('assets/timer_icon.png' , height: 30,),
                child: Text('Timer'),

              ),
              Tab(
                icon: Image.asset('assets/stopwatch_icon.png' , height: 30 ,),
                child: Text('Stop watch'),

              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AlarmScreen(),
            ClockScreen(),
            TimerScreen(),
            StopWatchScreen()

          ],
        ),
      ),
    );
  }
}
