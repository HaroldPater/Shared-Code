import 'dart:async';
/* Un Stream en Dart es una secuencia de eventos asíncronos que se pueden procesar 
a medida que ocurren. Es similar a un Iterable asíncrono, donde en lugar de solicitar
el siguiente evento, el Stream te notifica cuando hay un nuevo evento disponible */
void main(){
  //Stream Controller
  StreamController<int> myController = StreamController<int>();
  //Stream 
  Stream myStream = myController.stream;
  //Stream Subscripcion
  StreamSubscription mySubscripcion = myStream.listen((value){
    print('La subscripcion escucho el valor: $value');
  });
  myController.add(10);
  myController.add(20);
  myController.add(30);
}

