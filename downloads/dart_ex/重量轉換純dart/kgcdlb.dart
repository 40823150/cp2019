kgtolb(num kg) {
  return kg * 2.204623;
}
lbtokg(num lb) {
  return lb * 0.453592;
}
main() {
  int len;
  var type;
  var number;
  List temp = [ "25kg", "30lb", "56lb", "14kg", "68lb", "198kg"];
  for (var data in temp) {
    len = data.length;
    type = data[len - 1];
    number = data.substring(0, len - 2);
    number = num.parse(number);
    if (type == "b")
    {
      print(" $number 英鎊 =  ${lbtokg(number)} 公斤");
    } else {
      print(" $number 公斤 =  ${kgtolb(number)} 英鎊");
    }
  }
}