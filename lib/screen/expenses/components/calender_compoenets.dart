import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:flutter_web_expenses/responsive.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CalenderWidget extends StatefulWidget {
  @override
  _CalenderWidgetState createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  final DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  late CalendarCarousel _calendarCarouselNoHeader;

  static final Widget _eventIcon = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: const Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {
      DateTime(2020, 2, 10): [
        Event(
          date: DateTime(2020, 2, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        Event(
          date: DateTime(2020, 2, 15),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    _markedDateMap.add(
        DateTime(2020, 2, 25),
        Event(
          date: DateTime(2020, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        DateTime(2020, 2, 10),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(DateTime(2019, 2, 11), [
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      dayButtonColor: Colors.white,
      todayButtonColor: Colors.yellow,
      markedDateCustomShapeBorder:
          const CircleBorder(side: BorderSide(color: Colors.yellow)),
      weekendTextStyle: const TextStyle(color: Colors.red),
      weekdayTextStyle: const TextStyle(fontSize: 14, color: Colors.white),
      markedDateCustomTextStyle:
          const TextStyle(fontSize: 14, color: Colors.blue),
      showHeader: false,
      todayTextStyle: const TextStyle(color: Colors.blue),
      daysTextStyle: const TextStyle(fontSize: 14, color: Constant.deepBlue),
      selectedDayTextStyle: const TextStyle(color: Colors.yellow),
      prevDaysTextStyle: const TextStyle(fontSize: 14, color: Colors.blue),
      inactiveDaysTextStyle:
          const TextStyle(color: Colors.tealAccent, fontSize: 14),
      onDayPressed: (DateTime date, List<Event> events) {
        setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      childAspectRatio: Responsive.isMobile(context) ? 1.8 : 1.2,
      weekFormat: false,
      // markedDatesMap: _markedDateMap,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),

      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),

      onCalendarChanged: (DateTime date) {
        setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Constant.deepBlue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //custom icon
            Expanded(
              child: Text(
                "Calender",
                overflow: TextOverflow.ellipsis,
                style: Constant.fontBlack32
                    .copyWith(fontSize: 17.sp, color: Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        _currentMonth,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: ElevatedButton(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: const Text(
                          'PREV',
                          style: Constant.fontBlack12,
                        ),
                      ),
                      //Hello,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.white,
                        shape: const StadiumBorder(),
                        minimumSize: const Size(30, 35),
                        maximumSize: const Size(70, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          _targetDateTime = DateTime(
                              _targetDateTime.year, _targetDateTime.month - 1);
                          _currentMonth =
                              DateFormat.yMMM().format(_targetDateTime);
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.white,
                      shape: const StadiumBorder(),
                      minimumSize: const Size(30, 35),
                      maximumSize: const Size(70, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month + 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: const Text(
                        'NEXT',
                        style: Constant.fontBlack12,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: _calendarCarouselNoHeader,
            ), //
          ],
        ),
      ),
    );
  }
}
//
