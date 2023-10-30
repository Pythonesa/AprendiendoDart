void main() {
  var isActive; // null
  print(isActive);

  dynamic isActive2; // null
  print(isActive2);

  bool? isActive3; // null
  //print(isActive3!); <- Error, no puede ser null por el !
  print(isActive3);

  bool isActive4 = true;
  print(isActive4);

  bool isNotActive = !isActive4; // false
  print(isNotActive);
}
