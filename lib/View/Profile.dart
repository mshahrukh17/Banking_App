import '../Export/AllExport.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Profile",
          style: MyText.BoldTitle2(Colors.black87, 20.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/person.png'),
            ),
            title: Text(
              "Tanya Myroniuk",
              style: MyText.regular(20.0, Colors.black87),
            ),
            subtitle: Text(
              "Senior Designer",
              style: MyText.LightWeightTitle(14.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListShorts(Icons.person_outline, "Personal Information"),
          ListShorts(Icons.payment, "Payment Preferences"),
          ListShorts(Icons.credit_card, "Banks and Cards"),
          ListShorts(Icons.notifications_outlined, "Notifications"),
          ListShorts(Icons.message_outlined, "Message Center"),
          ListShorts(Icons.location_on_outlined, "Address"),
        ],
      ),
    );
  }

  Column ListShorts(icon, title) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider()
      ],
    );
  }
}
