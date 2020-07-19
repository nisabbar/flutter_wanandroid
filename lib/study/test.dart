void main() {
//  get();
  aaa().then((v) {
    print(v);
  });
}

void get() {
  var list = List<int>();
  for (var i = 0; i < 100; i++) {
    list.add(i);
  }

  var map = list.map((val) {
    return val.toString() + "adfasd";
  });

  map.forEach((v) {
    print(v);
  });
}

Future<String> aaa() async {
  print('aaa');
  await delay();
  await print('bbb');
  delay();
  print('ccc');
  print('eee');
  return 'ok';
}

delay() {
  Future.delayed(Duration(seconds: 5)).then((v) {
    print('del');
  });
}
