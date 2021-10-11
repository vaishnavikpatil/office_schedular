import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  CalendarState();
  }
}

class   CalendarState extends State< Calendar> {
  CalendarFormat format =CalendarFormat.month;
  DateTime selectedDay =DateTime.now();
  DateTime focusedDay =DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text('Calendar'),
      ),
      body: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay:DateTime(1990),
        lastDay: DateTime(2050),
        calendarFormat : format,
        onFormatChanged: (CalendarFormat _format){
          setState(() {
            format = _format;
          });
    },
          startingDayOfWeek: StartingDayOfWeek.sunday,
          daysOfWeekVisible: true,onDaySelected: (DateTime selectDay,DateTime focusDay) {
          setState(() {
            selectedDay = selectDay;
            focusedDay = focusDay;
          });
        },
        calendarStyle: CalendarStyle(isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
        color:Colors.teal,
        shape: BoxShape.circle,
        ),
          selectedTextStyle: TextStyle(color: Colors.white),
            todayDecoration: BoxDecoration(
            color:Colors.black45,
          shape: BoxShape.circle,
        ),
      ),
        selectedDayPredicate:(DateTime date) {
          return isSameDay(selectedDay, date);
        }
    ),
    );
  }
}