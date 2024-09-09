// ignore_for_file: must_be_immutable

import '../../Export/AllExport.dart';

class MyButton extends StatelessWidget {
  final void Function() onpress;
  var buttontext;
 MyButton({super.key, required this.onpress, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onpress();
      },
      child: Material(
        elevation: 10,
        shadowColor: Color(0xfff0066FF),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 48,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              color: Color(0xfff0066FF),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xfff0066FF), width: 3)),
          child: Center(
              child: Text(
            buttontext,
            style: MyText.BoldTitle2(Colors.white, 16.0),
          )),
        ),
      ),
    );
  }
}
