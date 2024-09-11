import 'package:banking_app/Models.dart/Models.dart';
import '../Export/AllExport.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            "Stats",
            style: MyText.BoldTitle2(Colors.black87, 22.0),
          ),
          actions: [Icon(Icons.notifications_outlined)],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
          child: SingleChildScrollView(
            child: FadeAnimation(
              delay: 0.6,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Current Balance",
                      style: MyText.BoldTitle2(Colors.black38, 18.0),
                    ),
                  ),
                  Text(
                    "\$8,545.00",
                    style: MyText.BoldTitle2(Colors.black87, 20.0),
                  ),
                  Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/graph.png"))),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(month.length, (index) {
                      return Text("${month[index]["name"]}");
                    }),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction",
                          style: MyText.BoldTitle2(Colors.black87, 18.0),
                        ),
                        Text(
                          "See All",
                          style: MyText.BoldTitle2(Color(0xfff0066FF), 18.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Transactions.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(
                            Transactions[index]["Icon"],
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          Transactions[index]["title"],
                          style: MyText.medium(),
                        ),
                        subtitle: Text(
                          Transactions[index]["subtitle"],
                          style: MyText.regular(12.0, Colors.grey),
                        ),
                        trailing: Text(
                          Transactions[index]["price"],
                          style: MyText.medium(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
