import 'package:banking_app/Models.dart/Models.dart';

import '../Export/AllExport.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
    double currentslider = 4600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Card",
          style: MyText.BoldTitle2(Colors.black87, 22.0),
        ),
      ),
      body: SingleChildScrollView(
        child: FadeAnimation(
          delay: 0.6,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://bankislami.com.pk/wp-content/uploads/2022/09/Master-Debit-Card.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListView.builder(
                itemCount: Transactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Text("Monthly spending limit",
                    style: MyText.BoldTitle2(Colors.black87, 17.0),
                    textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amount : \$8,545.00",
                      style: MyText.BoldTitle2(Colors.black87, 14.0),
                      ),
                      Slider(value: currentslider,
                      max: 10000,
                      activeColor: Color(0xfff0066FF),
                      inactiveColor: Colors.white,
                      label: currentslider.round().toString(),
                       onChanged: (double value) {
                        setState(() {
                          currentslider = value;
                        });
                      },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$0",
                             style: MyText.BoldTitle2(Colors.grey.shade800, 14.0),
                            ),
                            Text("\$" +currentslider.round().toString(),
                            style: MyText.BoldTitle2(Colors.grey.shade800, 14.0),
                            ),
                            Text("\$10,000",
                            style: MyText.BoldTitle2(Colors.grey.shade800, 14.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
          
              )
            ],
          ),
        ),
      ),
    );
  }
}
