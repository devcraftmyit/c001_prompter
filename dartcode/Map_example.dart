void main(){
  var englishToSpanish = <String, String>{
    'red' : 'rojo',
    'blue' : 'azul',
    'green' : 'verde'
  };
  englishToSpanish.forEach((englishColour,spanishColour){
    print ('$englishColour is $spanishColour in spanish ');
  });
}