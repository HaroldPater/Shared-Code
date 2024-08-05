//Async* - Await

void main(){
  emitNumbers().listen((value){
    print(value);
  });
}

Stream<int> emitNumbers() async* {
  final listToEmit = [1,2,3,4,5];
  for(int i in listToEmit){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}