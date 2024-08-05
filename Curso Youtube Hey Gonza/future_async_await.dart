

void main(){
  print('Hola Todos');
  Future.delayed(Duration(seconds: 2), ()=> print('Async'));
  Imprimir();
}

void Imprimir () async {
  try{
    final numero = await getNumero();
    print(numero);
  }catch(error){
    print(error);
  }
}
Future<int> getNumero(){
  return Future.delayed(Duration(seconds: 3), ()=> 10);
}


