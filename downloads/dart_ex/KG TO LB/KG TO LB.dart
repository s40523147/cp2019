//在此輸入重量
List candf = ["25kg", "30lb", "56lb", "14kg", "68lb", "198kg"];

void main() {
  for (var i in candf) {
    if (i[2] == "KG") {
      var o = (i[0] + i[1]);
      var kg = num.parse(o);
      num lb = kg * 0.45359237;
      
      print("KG $kg °等於LB $lb°");
    if (i[2] == "LB") {
      var o = (i[0] + i[1]);
      var lb = num.parse(o);
      num kg = lb * 1 / 0.45359237;
      print("KG $kg °等於LB $lb°");
    }
  }
 }
}