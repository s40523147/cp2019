// 因為要使用超文件表單, 因此導入 html 程式庫
import "dart:html";

// kg = lb *1/2.2046226218
// 定義 公斤 轉 英鎊 的函式
KGtoLB(num k){
return k* 2.2046226218;
}
LBtoKG(num l){
return l*1/ 2.2046226218;
}

// 每一個 Dart 程式都從 main() 開始執行
main() {
    // 透過表單, 取得使用者輸入的溫度值, 語法為數字加上 C 或 F
    InputElement tempInput = querySelector("#weight");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}

convert(String data){
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number;
  // 準備將轉換結果顯示在 output Label 區
  LabelElement output = querySelector("#output");
  // 直接取得單一輸入 data 字串
  len = data.length;
  // 取得各筆資料的最後一個字元
  type = data[len-1];
  number = data.substring(0, len-1);
  // 將字串轉為數字
  number = int.parse(number);
  if (type == "K" || type == "k"){
     output.innerHtml = "公斤 $number 公斤 = 英鎊 ${KGtoLB(number).toStringAsFixed(2)} 英鎊";
  } else if ((type == "L" || type == "l")){
     output.innerHtml = "英鎊 $number 英鎊 = 公斤 ${LBtoKG(number).toStringAsFixed(2)} 公斤";
  } else {
     output.innerHtml = "請輸入數字加上 K 或 L!";
  }
} // convert
