// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     DateTime date = DateTime.now();
//     var day = DateTime(date.year, date.month + 1, 0).day;
//     int cuntDate = date.day;
//     // DateTime date = new DateTime(now.year, now.month, now.day);
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
//             child: GridView.builder(
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 7,
//                   mainAxisSpacing: 4,
//                   crossAxisSpacing: 4,
//                   childAspectRatio: 1),
//               itemCount: Days.values.length,
//               itemBuilder: (context, index) {
//                 int i = 0;
//                 i = i + 7;
//                 return Container(
//                   height: 10,
//                   width: 10,
//                   decoration: const BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(7.2),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       Days.values[index].name,
//                       style: const TextStyle(color: Colors.white, fontSize: 26),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: GridView.builder(
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 7,
//                   mainAxisSpacing: 4,
//                   crossAxisSpacing: 4,
//                   childAspectRatio: 1),
//               itemCount: day,
//               itemBuilder: (context, index) {
//                 int i = 0;
//                 i = i + 7;
//                 return Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: cuntDate < index + 1
//                         ? Colors.black12
//                         : cuntDate == index + 1
//                             ? Colors.white
//                             : Colors.grey,
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(7.2),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text("${index + 1}"),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // enum  Days {
// //   S,
// //   M,
// //   T,
// //   W,
// //   Th,
// //   F,
// //   Sa,
// // }
