void main() {
   final list = [1,2,3,4,5,5,6,7,7,7,8,9];
  print ('lista: $list');
  print ('reversed ${list.reversed}');
  print (sumaOp(3, 6));
  
  int suma (int a ,int b) => (a + b);
  print ('Resultado: ${suma(10, 6)}');
  int sumaOp (int a, [int? b]) {
    b ??= 0; // si b es nulo entonces toma el valor 0
    return a + b;
  };