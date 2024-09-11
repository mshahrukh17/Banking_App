import '../Export/AllExport.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
    var passController = TextEditingController();
    var nameController = TextEditingController();
    var numberController = TextEditingController();
    bool showpass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: FadeAnimation(
          delay: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: MyText.BoldTitle2(Colors.black, 24.0),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Username",
                style: MyText.LightWeightTitle(13.0),
              ),
              FadeAnimation(
                delay: 1,
                child: MyTextField(
                  hinttext: "Username",
                  controller: nameController,
                  prefixicon: Icon(Icons.person_outlined),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Email Address",
                style: MyText.LightWeightTitle(13.0),
              ),
              FadeAnimation(
                delay: 1.2,
                child: MyTextField(
                  hinttext: "Email Address",
                  controller: emailController,
                  prefixicon: Icon(Icons.mail_outline),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Phone Number",
                style: MyText.LightWeightTitle(13.0),
              ),
              FadeAnimation(
                delay: 1.3,
                child: MyTextField(
                  hinttext: "Phone Number",
                  controller: numberController,
                  prefixicon: Icon(Icons.phone_outlined),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Password",
                style: MyText.LightWeightTitle(13.0),
              ),
              FadeAnimation(
                delay: 1.4,
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
                child: MyButton(onpress: (){
                  Navigator.pushNamed(context, '/navbar');
                }, buttontext: "Sign In"),
              )),
              SizedBox(height: 30,),
              Center(child: FadeAnimation(
                delay: 1.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account. ",
                    style: MyText.LightWeightTitle(12.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text("Sign Up",
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