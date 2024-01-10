import 'package:flutter/material.dart';


class HorizontalDateList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          DateTime currentDate = DateTime.now().add(Duration(days: index));
          String month = _getMonth(currentDate.month);
          String dayOfWeek = _getDayOfWeek(currentDate.weekday);

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150.0, // Adjust the width as needed
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    month,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    currentDate.day.toString(),
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    dayOfWeek,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _getMonth(int month) {
    const List<String> months = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ];
    return months[month - 1];
  }

  String _getDayOfWeek(int dayOfWeek) {
    const List<String> daysOfWeek = [
      "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"
    ];
    return daysOfWeek[dayOfWeek % 7 - 1];
  }
}
