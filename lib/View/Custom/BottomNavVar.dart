import 'package:banking_app/View/Card.dart';
import 'package:banking_app/View/Settings.dart';
import '../../Export/AllExport.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentindex = 0;
  List body = [
    HomePage(),
    CardPage(),
    Stats(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xfff0066FF),
        elevation: 5,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentindex,
        onTap: (int newIndex) {
          setState(() {
            _currentindex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.wallet,),
            label: "Card"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart,),
            label: "Stats"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings", 
            ),
        ]),
        body: PageView(
          children: [
            body[_currentindex]
          ],
        )
     );
  }
}