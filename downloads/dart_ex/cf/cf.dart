CtoF(num c) {
//定義一個CtoF的函式 C的資料型別可以為整數或浮點數
  return c * 9 / 5 + 32;
// 將輸入的攝氏溫度參數 C 數值乘上 9 再除以 5 之後, 再加上 32, 可以得到華氏溫度
}
FtoC(num f) {
//定義一個FtoC的函式 F的資料型別可以為整數或浮點數
  return (f - 32) * 5 / 9;
  // 將輸入的華氏溫度參數減 32 之後, 乘上 5 再除以 9 之後, 可以得到攝氏溫度
}

// 每一個 Dart 程式都必須從 main() 開始執行
main() {
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number;
  List temp = ["20C", "30C", "50.9F", "40C", "23F"];
  //定義一個數列名稱為temp= ["20C", "30C", "50.9F", "40C", "23F"]
  // 利用重複迴圈, 逐一讀出各筆資料並傳回CtoF(num c)與FtoC(num f)計算
  for (var data in temp) {
    len = data.length;
    //定義len是數據的長度
    // 取得各筆資料的最後一個字元
    type = data[len - 1];
    //定義type是各筆資料最後一個字元
    // 根據溫度類別CorF轉給對應函式進行溫度轉換
    number = data.substring(0, len - 1);
    //number=字串的數據除了每一個字串的最後一個字不取其他都取
    // 由於取得的 number 為字串, 必須設法轉為數字
    number = num.parse(number);
    //number=解析number為整數或浮點數
    if (type == "C")
    //如果type判斷是C執行下面程式
    {
      //print("C: $type, $number");
      print("攝氏 $number 度 = 華氏 ${CtoF(number)} 度");
    } else {
      //不是的話執行下面程式
      //print("F: $type, $number");
      print("華氏 $number 度 = 攝氏 ${FtoC(number)} 度");
    }
  }
}