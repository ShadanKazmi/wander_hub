import 'package:flutter/material.dart';

import '../navBar.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LogisticBottomBarWidget(),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        child: null,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo_transparent.png',
        ),
        elevation: 0,
        // backgroundColor: Colors.,
        // title: Image.asset(
        //   'assets/wanderhubIcon.jpg',
        // ),
      ),
      // bottomNavigationBar: NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //     indicatorColor: Colors.indigoAccent,
      //     labelTextStyle: MaterialStateProperty.all(
      //       TextStyle(
      //         fontSize: 14,
      //         fontWeight: FontWeight.w500,
      //       )
      //     ),
      //   ),
      //   child: NavigationBar(
      //     height: 60,
      //     backgroundColor: Colors.red,
      //     selectedIndex: index,
      //     onDestinationSelected: (index) =>
      //
      //     destinations: [
      //       NavigationDestination(
      //           icon: Icon(Icons.email_rounded),
      //           label: 'Mail',
      //       ),
      //     ],
      //
      //   ),
      // ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          buildClipRRect(),
          SizedBox(height: 12),
          buildClipRRect(),
          SizedBox(height: 12),
          buildClipRRect(),
          SizedBox(height: 12),
        ],
      ),
    );
  }

  ClipRRect buildClipRRect() {
    return ClipRRect(
      // borderRadius: BorderRadius.circular(20),
      child: Container(
        // margin: EdgeInsets.all(100),
        color: Colors.black.withOpacity(0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: double.infinity,
              height: 200,
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Image(
                  image: AssetImage('assets/logo_transparent.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Divider(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: Text('Trip data'),
            ),
            Divider(
              height: 10,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.thumbs_up_down_outlined,
                ),
                label: Text(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
