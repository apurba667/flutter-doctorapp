import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var yesterday = date.day - 1;
    var yesterday2 = date.day - 2;
    var nextday = date.day + 1;
    var nextday2 = date.day + 2;
    final DateFormat formatter = DateFormat("EEEE");
    final String formatted = formatter.format(date).trim();
    String day = formatted.substring(0, 3);

    // String day = DateFormat('EEEE, d MMM, yyyy').format(date);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      height: 800,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                date.month == 1
                    ? "January"
                    : date.month == 2
                        ? "February"
                        : date.month == 3
                            ? "march"
                            : date.month == 4
                                ? "April"
                                : date.month == 5
                                    ? "May"
                                    : date.month == 6
                                        ? "June"
                                        : date.month == 7
                                            ? "July"
                                            : date.month == 8
                                                ? "August"
                                                : date.month == 9
                                                    ? "Septermber"
                                                    : date.month == 10
                                                        ? "October"
                                                        : date.month == 11
                                                            ? "November"
                                                            : "December",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(" , ${date.year}",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("${yesterday2}"),
                  Text(day == "Thu"
                      ? "Tue"
                      : day == "Wed"
                          ? "Mon"
                          : day == "Tue"
                              ? "Sun"
                              : day == "Mon"
                                  ? "Sat"
                                  : day == "Sun"
                                      ? "Fri"
                                      : day == "Sat"
                                          ? "Thu"
                                          : "Wed")
                ],
              ),
              Column(
                children: [
                  Text("${yesterday}"),
                  Text(day == "Thu"
                      ? "Wed"
                      : day == "Wed"
                          ? "Tue"
                          : day == "Tue"
                              ? "Mon"
                              : day == "Mon"
                                  ? "Sun"
                                  : day == "Sun"
                                      ? "Sat"
                                      : day == "Sat"
                                          ? "Fri"
                                          : "Tus")
                ],
              ),
              Column(
                children: [Text("${date.day}"), Text(day)],
              ),
              Column(
                children: [
                  Text("${nextday}"),
                  Text(day == "Thu"
                      ? "Fri"
                      : day == "Wed"
                          ? "Thu"
                          : day == "Tue"
                              ? "Wed"
                              : day == "Mon"
                                  ? "Tue"
                                  : day == "Sun"
                                      ? "Mon"
                                      : day == "Sat"
                                          ? "Sun"
                                          : "Sat")
                ],
              ),
              Column(
                children: [
                  Text("${nextday2}"),
                  Text(day == "Thu"
                      ? "Sat"
                      : day == "Wed"
                          ? "Fri"
                          : day == "Tue"
                              ? "Thu"
                              : day == "Mon"
                                  ? "Wed"
                                  : day == "Sun"
                                      ? "Tue"
                                      : day == "Sat"
                                          ? "Mon"
                                          : "Sun")
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
