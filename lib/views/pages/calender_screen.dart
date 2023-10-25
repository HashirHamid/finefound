import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Theme.of(context).colorScheme.background),
            // color: Colors.red,
            width: double.infinity,
            // height: 700,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TableCalendar(
                    firstDay: DateTime(2000),
                    focusedDay: DateTime.now(),
                    lastDay: DateTime.now(),
                    locale: 'en_US',

                    calendarFormat: CalendarFormat.month,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.grey),
                      weekendStyle: TextStyle(color: Colors.grey),
                    ),
                    calendarStyle: CalendarStyle(
                        // todayColor: Colors.blue,
                        // selectedColor: Colors.orange,
                        ),
                    eventLoader: (day) {
                      // TODO: Implement event loading here
                      return [];
                    },
                    // onDaySelected: (day, events, holidays) {
                    //   // TODO: Implement on day selected here
                    // },
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        // final event = _events[index];
                        return ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/cal_green.png",
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10:00-13:00",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              Text(
                                "New Order",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            "Start from screen 16",
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey.shade400),
                          ),
                          trailing: Icon(
                            Icons.more_horiz_outlined,
                            size: 20,
                            color: Colors.grey.shade400,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}
