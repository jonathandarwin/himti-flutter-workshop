

import 'package:flutter/material.dart';
import 'package:himti_flutter_workshop/schedule.dart';

class SchedulePage extends StatelessWidget {

  List<Schedule> scheduleList = [
    Schedule("VC - Artificial Intelligence", "SE123", "09.20", "11.00", "306"),
    Schedule("VC - Database", "DB123", "11.20", "13.00", "307"),
    Schedule("VC - Competitive Programming", "CP123", "13.20", "15.00", "308"),

    Schedule("VC - Artificial Intelligence", "SE123", "09.20", "11.00", "306"),
    Schedule("VC - Database", "DB123", "11.20", "13.00", "307"),
    Schedule("VC - Competitive Programming", "CP123", "13.20", "15.00", "308"),

    Schedule("VC - Artificial Intelligence", "SE123", "09.20", "11.00", "306"),
    Schedule("VC - Database", "DB123", "11.20", "13.00", "307"),
    Schedule("VC - Competitive Programming", "CP123", "13.20", "15.00", "308"),

    Schedule("VC - Artificial Intelligence", "SE123", "09.20", "11.00", "306"),
    Schedule("VC - Database", "DB123", "11.20", "13.00", "307"),
    Schedule("VC - Competitive Programming", "CP123", "13.20", "15.00", "308"),

    Schedule("VC - Artificial Intelligence", "SE123", "09.20", "11.00", "306"),
    Schedule("VC - Database", "DB123", "11.20", "13.00", "307"),
    Schedule("VC - Competitive Programming", "CP123", "13.20", "15.00", "308"),

    Schedule("VC - Artificial Intelligence", "SE123", "09.20", "11.00", "306"),
    Schedule("VC - Database", "DB123", "11.20", "13.00", "307"),
    Schedule("VC - Competitive Programming", "CP123", "13.20", "15.00", "308"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Your Schedule",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollBehavior().copyWith(overscroll: false),
                child: ListView.builder(
                  itemCount: scheduleList.length,
                  itemBuilder: (context, index) {
                      
                    Schedule schedule = scheduleList[index];
                    print(index);
                      
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.circle, 
                            color: Colors.red, 
                            size: 16
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClassInfoText(schedule.className, schedule.classCode),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  ClassTimeText(schedule.timeStart, schedule.timeEnd),
                                  SizedBox(width: 16,),
                                  ClassRoomText(schedule.room)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}


class ClassInfoText extends StatelessWidget {

  String className;
  String classCode;

  ClassInfoText(
    this.className,
    this.classCode,
  );


  @override
  Widget build(BuildContext context) {
    return Text(
      "$className ($classCode)",
      style: TextStyle(
        color: Color(0xFF028DD7)
      )
    );
  }
}

class ClassTimeText extends StatelessWidget {

  String timeStart;
  String timeEnd;

  ClassTimeText(this.timeStart, this.timeEnd);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time_sharp,
          size: 16,
          color: Colors.grey,
        ),
        SizedBox(width: 4,),
        Text(
          "$timeStart - $timeEnd"
        )
      ],
    );
  }
  
}

class ClassRoomText extends StatelessWidget {

  String room;

  ClassRoomText(this.room);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_rounded,
          size: 16,
          color: Colors.grey,
        ),
        SizedBox(width: 4,),
        Text(room)
      ],
    );
  }
  
}