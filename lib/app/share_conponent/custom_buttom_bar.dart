// import 'package:get/get.dart';
//
// class CustomBottomBar {
//   CustomBottomBar._();
//   static final inTans = CustomBottomBar._();
//   final widgetPage = <Widget>[
//     Container(color: Colors.blue),
//     Container(color: Colors.green),
//     Container(color: Colors.amber),
//     Container(color: Colors.red),
//     Container(color: Colors.white),
//   ];
//   final _bottomNavigationLists = [
//     const BottomNavigationBarItem(
//       icon: Text('steam'),
//       activeIcon: Text('steam'),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Text('SP'),
//       activeIcon: Container(color: Colors.green, child: Text('SP')),
//       label: '',
//     ),
//     const BottomNavigationBarItem(
//       icon: Text('Noti'),
//       activeIcon: Text('Noti'),
//       label: '',
//     ),
//     BottomNavigationBarItem(
//       icon: Text('AsNoti'),
//       activeIcon: Container(color: Colors.green, child: Text('AsNoti')),
//       label: '',
//     ),
//     const BottomNavigationBarItem(
//       icon: Text('ChNoti'),
//       activeIcon: Text('ChNoti'),
//       label: '',
//     ),
//   ];
//   Widget buildBottomBar() {
//     return Obx(
//       () {
//         return Container(
//           decoration: const BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.white,
//                 offset: Offset(0, 4),
//                 blurRadius: 30,
//                 spreadRadius: 0,
//               )
//             ],
//           ),
//           child: BottomNavigationBar(
//             currentIndex: ref.watch(setIndexBottomBar),
//             onTap: (index) => ref
//                 .read(setIndexBottomBar.notifier)
//                 .update((state) => state = index),
//             type: BottomNavigationBarType.fixed,
//             items: _bottomNavigationLists,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             selectedItemColor: Colors.red,
//             unselectedItemColor: Colors.green,
//             //  selectedLabelStyle: Colors.amber,
//             //  unselectedLabelStyle: CustomTextStyles.button2.copyWith(
//             //   color: CustomColors.text4Color,
//             // )
//           ),
//         );
//       },
//     );
//   }
// }
