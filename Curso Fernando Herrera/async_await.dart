void main() async{
  print('Inicio del Programa');
  
  try{
    final value = await myFuture('urlRandom');
    print(value);
  }catch(err){
    print('Error: $err');
  }
  
  print('Fin del Programa');
}

Future<String> myFuture (String url) async {
  await Future.delayed(Duration(seconds: 1));
  // throw 'Error de la respuesta';
  return 'Respuesta';
}