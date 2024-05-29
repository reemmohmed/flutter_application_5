import 'package:flutter/material.dart';

class RadioCheekButton extends StatefulWidget {
  const RadioCheekButton({super.key});

  @override
  State<RadioCheekButton> createState() => _RadioCheekButtonState();
}

class _RadioCheekButtonState extends State<RadioCheekButton> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Row(
        children: [
          Image.asset(
            'assets/hotel.jpg',
            height: 100,
            width: 200,
          ),
          Text('KingRoom')
        ],
      ),

      // body: Column(children: [
      //   Row(
      //     children: <Widget>[
      //       // Text(
      //       //   'Cheek_ in Data',
      //       //   style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
      //       // ),

      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Row(
      //           children: [
      //             Text(
      //               selectedDate == null
      //                   ? 'Cheek_ in Data'
      //                   : '${selectedDate?.year} -${selectedDate?.month} -${selectedDate?.day}'
      //                       .toString(),
      //               style: TextStyle(
      //                   color: Colors.deepOrangeAccent,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             IconButton(
      //                 onPressed: () async {
      //                   var result = await showDatePicker(
      //                       context: context,
      //                       firstDate: DateTime(2020),
      //                       lastDate: DateTime(2025));
      //                   if (result != null) {
      //                     selectedDate = result;
      //                     setState(() {});
      //                   }
      //                 },
      //                 icon: const Icon(Icons.calendar_today_rounded)),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       Text(
      //         selectedDate == null
      //             ? 'Cheek_ in Data'
      //             : '${selectedDate?.year} -${selectedDate?.month} -${selectedDate?.day}'
      //                 .toString(),
      //         style: TextStyle(
      //             color: Colors.deepOrangeAccent,
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold),
      //       ),
      //       IconButton(
      //           onPressed: () async {
      //             var result = await showDatePicker(
      //                 context: context,
      //                 firstDate: DateTime(2020),
      //                 lastDate: DateTime(2025));
      //             if (result != null) {
      //               selectedDate = result;
      //               setState(() {});
      //             }
      //           },
      //           icon: const Icon(Icons.calendar_today_rounded)),
      //     ],
      //   ),
      // ]),
    );
  }
}
