import 'dart:async';

main() async{
  await for(int i in oneNumberEverySecond()){
    print(i);
  };
}

Stream<int> oneNumberEverySecond () async* {
    for (int i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i; //yield = Cumple la funcion del return pero dentro de los Stream
    }
}