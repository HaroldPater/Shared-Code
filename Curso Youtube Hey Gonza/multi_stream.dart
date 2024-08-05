import 'dart:async';

void main(){
  //Stream Controller
  StreamController<int> myController = StreamController.broadcast();
  //Stream 
  Stream myStream = myController.stream;
  //Stream Subscripcion
  // 2 subscripciones escuchando el mismo Stream
  StreamSubscription mySubscripcion = myStream.listen((value){
    print('La subscripcion escucho el valor: $value');
  });
  StreamSubscription mySubscripcion2 = myStream.listen((value){
    print('La subscripcion2 escucho el valor: $value');
  });
  myController.add(10);
  myController.add(20);
  myController.add(30);
}

