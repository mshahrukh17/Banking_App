import '../Export/AllExport.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
    var passController = TextEditingController();
    bool showpass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 25, right: 25),
        child: FadeAnimation(
          delay: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: MyText.BoldTitle2(Colors.black, 24.0),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Email Address",
                style: MyText.LightWeightTitle(13.0),
              ),
              FadeAnimation(
                delay: 1,
                child: MyTextField(
                  hinttext: "Email Address",
                  controller: emailController,
                  prefixicon: Icon(Icons.mail_outline),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Password",
                style: MyText.LightWeightTitle(13.0),
              ),
              FadeAnimation(
                delay: 1.2,
                child: MyTextField(
                  hinttext: "Password",
                  controller: passController,
                  obscuretext: !showpass,
                  prefixicon: Icon(Icons.lock_outline),
                  suffixicon:
                      IconButton(onPressed: () {
                       setState(() {
                          showpass = !showpass;
                       });
                      }, icon: Icon(showpass == true ? Icons.visibility_outlined : Icons.visibility_off_outlined)),
                ),
              ),
              SizedBox(height: 50,),
              Center(child: FadeAnimation(
                delay: 1.5,
                child: MyButton(onpress: (){}, buttontext: "Sign In"))),
              SizedBox(height: 30,),
              Center(child: FadeAnimation(
                delay: 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I’m a new user. ",
                    style: MyText.LightWeightTitle(12.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text("Sign in",
                      style: MyText.BoldTitle2(Color(0xfff0066FF), 12.0),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
