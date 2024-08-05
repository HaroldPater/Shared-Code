void main(){
  emitNumbers().listen((value){
    print('valor: $value');
  });
}

Stream<int> emitNumbers(){
  return Stream.periodic(Duration(seconds: 1), (value){
    return value;
  }).take(5); //El take le da un limite de emisiones al Stream
  // return Stream.periodic(Duration(seconds: 1), (value) => value);
}