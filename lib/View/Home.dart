import 'package:banking_app/Models.dart/Models.dart';

import '../Export/AllExport.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22, right: 2, left: 2),
        child: SingleChildScrollView(
          child: FadeAnimation(
            delay: 0.6,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: AssetImage("assets/images/person.png"),
                  ),
                  title: Text("Welcome back,",
                  style: MyText.LightWeightTitle(14.0),
                  ),
                  subtitle: Text("Tanya Myroniuk",
                  style: MyText.BoldTitle2(Colors.black , 16.0),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.search, color: Colors.black,)),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: NetworkImage("https://bankislami.com.pk/wp-content/uploads/2022/09/Master-Debit-Card.png"), fit: BoxFit.cover)
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: History.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 4,
                          crossAxisSpacing: 2,
                          // childAspectRatio: 1.5
                    ), 
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(History[index]["Icon"], color: Colors.black,),
                          ),
                          SizedBox(height: 3,),
                          Text(History[index]["name"],
                          style: MyText.regular(13.0, Colors.black),
                          )
                        ],
                      );
                    },),
                     SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transaction",
                      style:MyText.BoldTitle2(Colors.black, 16.0,), 
                      ),
                      Text("Sell All",
                      style: MyText.BoldTitle2(Color(0xfff0066FF), 15.0,),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: Transactions.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(Transactions[index]["Icon"], color: Colors.black,),
                        ),
                        title: Text(Transactions[index]["title"],
                        style: MyText.medium(),
                        ),
                        subtitle: Text(Transactions[index]["subtitle"],
                        style: MyText.regular(12.0, Colors.grey),
                        ),
                        trailing: Text(Transactions[index]["price"],
                        style: MyText.medium(),
                        ),
                      ),
                      Divider()
                    ],
                  );
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}