import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/radio_cheek_button.dart';
import 'package:flutter_application_5/pages/room_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? selectedDate;
  bool isCityView = true;
  Map<String, bool> data = {
    'Break fas(10 USD DAY)': true,
    'internet Wifi (5 USD/Day)': false,
    'Parking ( 5 USD/Day)': false,
    'Swimming Pool ( 10 USD /Day)': false
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('Android ATC Hotel'),
        ),
        body: Column(
          children: [
            Image.asset('assets/hotel.jpg'),
            Column(children: [
              Row(
                children: [
                  Text(
                    selectedDate == null
                        ? 'Cheek_ in Data'
                        : '${selectedDate?.year} -${selectedDate?.month} -${selectedDate?.day}'
                            .toString(),
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () async {
                        var result = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2025));
                        if (result != null) {
                          selectedDate = result;
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.calendar_today_rounded)),
                ],
              ),
              Row(
                children: [
                  Text(
                    selectedDate == null
                        ? 'Cheek_ OUt Data'
                        : '${selectedDate?.year} -${selectedDate?.month} -${selectedDate?.day}'
                            .toString(),
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () async {
                        var result = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2025));
                        if (result != null) {
                          selectedDate = result;
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.calendar_today_rounded)),
                ],
              ),
            ]),
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.red,
                    value: data['Break fas(10 USD DAY)'],
                    onChanged: (value) {
                      resetMapValues();
                      data['Break fas(10 USD DAY)'] = true;
                      setState(() {});
                    }),
                Text('Break fas(10 USD DAY)')
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: data['internet Wifi (5 USD/Day)'],
                    onChanged: (value) {
                      resetMapValues();
                      data['internet Wifi (5 USD/Day)'] = true;
                      setState(() {});
                    }),
                Text('internet Wifi (5 USD/Day)')
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: data['Parking ( 5 USD/Day)'],
                    onChanged: (value) {
                      resetMapValues();
                      data['Parking ( 5 USD/Day)'] = true;
                      setState(() {});
                    }),
                Text('Parking ( 5 USD/Day)')
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: data['Swimming Pool ( 10 USD /Day)'],
                    onChanged: (value) {
                      resetMapValues();
                      data['Swimming Pool ( 10 USD /Day)'] = true;
                      setState(() {});
                    }),
                Text('Swimming Pool ( 10 USD /Day)')
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'View',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent, fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    value: isCityView,
                    onChanged: (value) {
                      isCityView = !isCityView;
                      setState(() {});
                    }),
                Text(
                  'City View',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RoomList()),
                      );
                    },
                    child: Text('Cheeck Rooms And Rates'))
              ],
            )
          ],
        ));
  }

  void resetMapValues() {
    for (var key in data.keys) {
      data[key] = false;
    }
  }
}
