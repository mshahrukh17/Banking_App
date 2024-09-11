// ignore_for_file: must_be_immutable
import '../../Export/AllExport.dart';

class MyTextField extends StatelessWidget {
  var hinttext;
  var suffixicon;
  var prefixicon;
  TextEditingController controller;
  var obscuretext;
  MyTextField({
    Key? key,
    required this.controller,
    this.hinttext,
    this.obscuretext = false,
    this.prefixicon,
    this.suffixicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      cursorColor: Color(0xfff0066FF),
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        prefixIcon: prefixicon,
        hintText: hinttext,
      ),
    );
  }
}
