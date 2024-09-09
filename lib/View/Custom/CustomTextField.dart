// ignore_for_file: must_be_immutable
import '../../Export/AllExport.dart';

class MyTextField extends StatelessWidget {
  var hinttext;
  var suffixicon;
  var prefixicon;
  TextEditingController controller;
  var obscuretext;
  MyTextField({super.key,
  this.prefixicon,
  this.suffixicon,
  required this.hinttext,
  required this.controller,
  this.obscuretext = false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      cursorColor: Color(0xfff0066FF),
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        prefixIcon:prefixicon,
        hintText: hinttext,
      ),
    );
  }
}
