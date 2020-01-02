// 因為要使用超文件表單, 因此導入 html 程式庫
import "dart:html";
kgtolb(num kg){
return kg*2.204623;
}
lbtokg(num lb){
return lb*0.453592;
}
main() {
    InputElement tempInput = querySelector("#temp");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}

convert(String data){
  int len;
  var type;
  var number;
  LabelElement output = querySelector("#output");
  len = data.length;
  type = data[len-1];
  number = data.substring(0, len-2);
  number = int.parse(number);
  if (type == "g" ){
     output.innerHtml = " $number 公斤 =  ${kgtolb(number).toStringAsFixed(2)} 英鎊";
  } else if ((type == "b" )){
     output.innerHtml = " $number 英鎊 = ${lbtokg(number).toStringAsFixed(2)} 公斤";
  } else {
     output.innerHtml = "請輸入數字加上 lb 或 kg!";
  }
}
