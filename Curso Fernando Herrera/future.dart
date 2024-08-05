void main(){
  print('Inicio del Programa');
  
  myFuture('urlRandom').then(
    (value){
      print(value);
    }
  ).catchError(
    (err){
      print('Error: $err');
    }
  );
  
  print('Fin del Programa');
}

Future<String> myFuture (String url){
  return Future.delayed(Duration(seconds: 1), (){
    throw 'Error de la respuesta';
    // return 'Respuesta';
  });
}