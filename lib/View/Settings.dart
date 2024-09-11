import '../Export/AllExport.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Settings",
          style: MyText.BoldTitle2(Colors.black87, 20.0),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeAnimation(
          delay: 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "General",
                style: MyText.regular(18.0, Colors.black),
              ),
              SizedBox(height: 30),
              rowWidget("Language", "English"),
              Divider(),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: rowWidget("My Profile", "")),
              Divider(),
              SizedBox(height: 20),
              rowWidget("Contact us", ""),
              Divider(),
              SizedBox(height: 20),
              Text(
                "Security",
                style: MyText.regular(14.0, Colors.grey.shade800),
              ),
              SizedBox(
                height: 10,
              ),
              rowWidget("Change Password", ""),
              Divider(),
              SizedBox(height: 20),
              rowWidget("Privacy policy", ""),
              Divider(),
              SizedBox(height: 20),
              Text(
                "Choose what data you share with us",
                style: MyText.regular(14.0, Colors.grey.shade800),
              ),
              SizedBox(
                height: 10,
              ),
              rowWidget("Biometric", ""),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Row rowWidget(title, subtitle) {
    return Row(
      children: [
        Text(
          title,
          style: MyText.medium(),
        ),
        Spacer(),
        Text(
          subtitle,
          style: MyText.regular(16.0, Colors.grey.shade800),
        ),
        SizedBox(width: 16,),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
