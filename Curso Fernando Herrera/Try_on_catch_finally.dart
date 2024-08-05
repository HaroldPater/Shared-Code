void main() async{
  print('Inicio del Programa\n');
  
  try{ //try{}
    final value = await myFuture('urlRandom');
    print('Exito: $value');
  }on Exception{ //on(){} 
    print('Tenemos una excepcion');
  }catch(err){   //catch(){}
    print('Error: $err');
  } finally{     //finally{}
    print('Final del try and catch\n');
  }
  //Nota: Solo se reproducira uno de entre los 3(try, on, Catch) pero siempre se reproducira el finally
  //'on' tambien se puede usar junto con el 'catch' => on()catch(){} juntos

  print('Fin del Programa');
}

Future<String> myFuture (String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception ('Excepcion en la respuesta');
  // throw 'Error en la respuesta';
  // return 'Respuesta';
}