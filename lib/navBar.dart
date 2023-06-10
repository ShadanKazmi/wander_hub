// import 'package:flutter/material.dart';

// class SideBar extends StatefulWidget {
//   const SideBar({Key? key}) : super(key: key);

//   @override
//   State<SideBar> createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         width: 288,
//         height: double.infinity,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class LogisticBottomBarWidget extends StatelessWidget {
  const LogisticBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 72,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/feed');
                    },
                    icon: Icon(
                      Icons.travel_explore_rounded,
                    ),
                    iconSize: 32,
                  ),
                  // Text(
                  //   "Home",
                  //   style: TextStyle(fontSize: 12),
                  // )
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigator.pushReplacementNamed(context, '/userProfile');
                    },
                    icon: Icon(
                      Icons.apartment,
                    ),
                    iconSize: 32,
                  ),
                  // Text(
                  //   "Your Trips",
                  //   style: TextStyle(
                  //     fontSize: 12,
                  //   ),
                  // )
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/addTrip');
                    },
                    icon: Icon(
                      Icons.add,
                    ),
                    iconSize: 32,
                  ),
                  // Text(
                  //   " ",
                  //   style: TextStyle(fontSize: 12),
                  // )
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/userProfile');
                    },
                    icon: Icon(
                      Icons.person,
                    ),
                    iconSize: 32,
                  ),
                  // Text(
                  //   "Account",
                  //   style: TextStyle(fontSize: 12),
                  // )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
