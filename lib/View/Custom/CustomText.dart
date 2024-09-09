import '../../Export/AllExport.dart';

class MyText{
  static TextStyle BoldTitle(){
    return TextStyle(
      fontSize: 20.0,
      fontFamily: "bold",
      fontWeight: FontWeight.bold,
      color: Color(0xfff0066FF)
    );
  }

   static TextStyle BoldTitle2(color, fontsize){
    return TextStyle(
      fontSize: fontsize,
      fontFamily: "bold",
      color: color
    );
  }

  static TextStyle LightWeightTitle(fontsize){
    return TextStyle(
      fontSize: fontsize,
      fontFamily: "light",
      fontWeight: FontWeight.bold,
      color: Colors.grey
    );
  }
}