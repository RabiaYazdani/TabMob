import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/models/userproductomodel.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/userproductocard.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';


class CalendarioScreen extends StatelessWidget {
   const CalendarioScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = UserProductoModel(
      name: 'Julia Treviño Pedroza',
      imageUrl:
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      dateString: '02-11-2021',
      timeString: '17:30',
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.06,
        backgroundColor: kBgColor,
        foregroundColor: kFgColor,
        centerTitle: true,
        elevation: 0,
        title: 'Calendario'
            .text
            .minFontSize(14)
            .fontWeight(FontWeight.w300)
            .make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: kisMobile
          ? SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: Get.height * 0.2,
                           // color: Colors.yellow,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            //height: Get.height * 0.258,
                            //color: Colors.blueAccent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                'Hoy'.text.make(),
                                Divider(
                                  color: kSpecialColor.withOpacity(0.7),
                                ),
                                UserProductoCard(model: model)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: kBgColor,
                              boxShadow: [
                                BoxShadow(
                                    color: kSpecialColor.withOpacity(0.5),
                                    spreadRadius: 1)
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: const TableBasicsExample()),
                    ],
                  ),
                  Container(
                    //color: Colors.green,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15
                    ),
                    //color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        'Miercoles 26/04/2022'.text.make(),
                        Divider(
                          color: kSpecialColor.withOpacity(0.7),
                        ),
                        ListView.builder(

                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context,index){
                            return UserProductoCard(model: model);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : Row(
            children: [
              SizedBox(
                width: Get.width*0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    SizedBox(
                        height:50,
                        child: '  Calendario'.text.minFontSize(30).fontWeight(FontWeight.w300).make()),
                    Card(
                      shadowColor: kSpecialColor.withOpacity(0.3),
                      margin:  const EdgeInsets.all(10),
                      color: kBgColor,
                      elevation: 10,
                      child:  const TableBasicsExample(),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width * 0.5,
                //color: Colors.redAccent,
                child:Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context,index){
                      return UserProductoCard(model: model);
                    }),
                  ],
                ),
              )
            ],
          ),
    );
  }
}

class TableBasicsExample extends StatefulWidget {
  const TableBasicsExample({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, 1, 1);
final kLastDay = DateTime(kToday.year, 12, 31);

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = kisMobile ? CalendarFormat.week : CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      daysOfWeekHeight: 30,
      rowHeight: 55,
      headerStyle: HeaderStyle(
        decoration:  BoxDecoration(color: kBgColor),
        leftChevronIcon:  Icon(Icons.chevron_left, color: kFgColor),
        rightChevronIcon:  Icon(Icons.chevron_right, color: kFgColor),
        leftChevronMargin: EdgeInsets.only(left:kisMobile ? Get.width * 0.2 : Get.width*0.1,),
        rightChevronMargin: EdgeInsets.only(right: kisMobile ? Get.width * 0.2 : Get.width*0.1),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        titleCentered: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        selectedDecoration:  BoxDecoration(
          color: kSpecialColor,
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(5),
        ),
        cellMargin: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 6,
        ),
        rowDecoration: const BoxDecoration(
            // color: kSpecialColor.withOpacity(0.05),
            ),
        todayDecoration: BoxDecoration(
          color: kSpecialColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      firstDay: kFirstDay,
      lastDay: kLastDay,
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) {
        // Use `selectedDayPredicate` to determine which day is currently selected.
        // If this returns true, then `day` will be marked as selected.

        // Using `isSameDay` is recommended to disregard
        // the time-part of compared DateTime objects.
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          // Call `setState()` when updating the selected day
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          // Call `setState()` when updating calendar format
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        // No need to call `setState()` here
        _focusedDay = focusedDay;
      },
    );
  }
}
