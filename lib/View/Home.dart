import '../Export/AllExport.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22, right: 2, left: 2),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 40,
              ),
              title: Text("Welcome back,",
              style: MyText.LightWeightTitle(14.0),
              ),
              subtitle: Text("Tanya Myroniuk",
              style: MyText.BoldTitle2(Colors.black , 16.0),
              ),
              trailing: CircleAvatar(child: Icon(Icons.search)),
            ),
            // Container(
            //   height: 80,
            //   width: MediaQuery.of(context).size.width * 0.7,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage("assets/images/splash1.png"))
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}